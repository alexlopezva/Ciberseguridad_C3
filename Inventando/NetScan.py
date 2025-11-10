ni = None  # netifaces will be imported lazily inside obtener_mac_local to avoid static import errors
import socket
import uuid

# pysnmp se importa de forma "lazy" dentro de consulta_walk_snmp para evitar errores
# de análisis estático si el paquete no está instalado en el entorno.

# --- 1. Parámetros y OIDs ---
# Debes reemplazar estos con la IP y la comunidad de tu switch de distribución
IP_SWITCH = '192.168.1.254' 
COMUNIDAD_SNMP = 'public'

# OIDs Clave para el descubrimiento (varían por fabricante, estos son genéricos)
OID_SYS_NAME = '1.3.6.1.2.1.1.5.0'        # Nombre del switch
OID_IF_DESCR = '1.3.6.1.2.1.2.2.1.2'      # Descripción de las interfaces (ej: 'GigabitEthernet1/0/1')
# OID para la tabla de reenvío (Bridge MIB) para mapear MAC a puerto. (dot1dBasePort)
OID_MAC_PORT_MAPPING = '1.3.6.1.2.1.17.4.3.1.2' 

# --- 2. Funciones de Ayuda ---

def obtener_mac_local():
    """Obtiene la dirección MAC del primer adaptador de red activo."""
    try:
def obtener_mac_local():
    """Obtiene la dirección MAC del primer adaptador de red activo."""
    try:
        # Intentar importar netifaces de forma perezosa para evitar errores de análisis estático
        try:
            import importlib
            global ni
            if ni is None:
                try:
                    ni = importlib.import_module('netifaces')
                except Exception:
                    ni = None
        except Exception:
            ni = None

        # Intentar usar netifaces si está disponible para obtener la interfaz por defecto
        if ni:
            gw = ni.gateways().get('default', {})
            default_iface = None
            if ni.AF_INET in gw:
                default_iface = gw[ni.AF_INET][1]
            if default_iface:
                addrs = ni.ifaddresses(default_iface)
                link = addrs.get(ni.AF_LINK)
                if link and len(link) > 0:
                    mac = link[0].get('addr')
                    if mac:
                        return mac.replace(':', '').replace('-', '').upper()
        # Fallback: usar uuid.getnode() para obtener la MAC del sistema
        mac_int = uuid.getnode()
        if mac_int is None:
            return None
        return "{:012X}".format(mac_int)
    except Exception:
        return None
    # Importar pysnmp aquí para evitar errores de importación estática si no está instalado.
    try:
        from pysnmp.hlapi import nextCmd, SnmpEngine, CommunityData, UdpTransportTarget, ContextData, ObjectType, ObjectIdentity
    except ImportError:
        raise ImportError("El paquete 'pysnmp' no está instalado. Instálalo con: pip install pysnmp")
    
    results = {}
    for (errorIndication,
         errorStatus,
         errorIndex,
         varBinds) in nextCmd(SnmpEngine(),
                              CommunityData(comunidad, mpModel=0),
                              UdpTransportTarget((ip, 161)),
                              ContextData(),
                              ObjectType(ObjectIdentity(base_oid)),
                              lexicographicMode=False):
        
        if errorIndication:
            print(f"Error en consulta WALK: {errorIndication}")
            break
        if errorStatus:
            try:
                print(f"Error en consulta WALK: {errorStatus.prettyPrint()}")
            except Exception:
                print(f"Error en consulta WALK: {errorStatus}")
            break
        
        for varBind in varBinds:
            # varBind[0] es el OID completo, varBind[1] es el valor
            parts = str(varBind[0]).split(base_oid + '.')
            if len(parts) > 1:
                oid_suffix = parts[1]
            else:
                oid_suffix = str(varBind[0])
            results[oid_suffix] = varBind[1].prettyPrint()
            
    return results

# --- 3. Función Principal ---

def identificar_puerto_lan():
    mac_local = obtener_mac_local()
    if not mac_local:
        print("❌ No se pudo obtener la dirección MAC local. Ejecuta con privilegios o revisa la configuración de red.")
        return

    print(f"✅ Dirección MAC local: {mac_local}")
    print(f"🕵️‍♀️ Buscando información del switch en {IP_SWITCH}...")
    
    try:
        # A. Obtener el Nombre del Switch
        nombre_switch = consulta_walk_snmp(IP_SWITCH, COMUNIDAD_SNMP, OID_SYS_NAME)
        print(f"**1. Nombre del Switch:** {nombre_switch.get('0', 'Desconocido')}")

        # B. Obtener el Mapeo MAC -> Puerto Index (dot1dBasePort)
        mac_to_port_map = consulta_walk_snmp(IP_SWITCH, COMUNIDAD_SNMP, OID_MAC_PORT_MAPPING)

        # C. Buscar la MAC local en el mapeo
        puerto_index = None
        # Las MACs en el OID se codifican como índices de 6 bytes (ej: .1.2.3.4.5.6)
        mac_oid_format = ".".join(str(int(mac_local[i:i+2], 16)) for i in range(0, 12, 2))
        
        # Iterar para encontrar el índice del puerto que corresponde a nuestra MAC
        for oid_suffix, index_value in mac_to_port_map.items():
            if oid_suffix.endswith(mac_oid_format):
                puerto_index = index_value
                break
        
        if not puerto_index:
            print("❌ No se encontró la MAC local en la tabla del switch (ARP/MAC Table).")
            print("   (Asegúrate de que la MAC está activa y la comunidad SNMP es correcta).")
            return

        print(f"**2. Puerto de Switch (Index):** {puerto_index}")

        # D. Mapear el índice del puerto al nombre real (ej: 'GigabitEthernet1/0/5')
        if_descriptions = consulta_walk_snmp(IP_SWITCH, COMUNIDAD_SNMP, OID_IF_DESCR)
        nombre_puerto = if_descriptions.get(puerto_index, f"Índice {puerto_index} (Desconocido)")
        print(f"**3. Puerto Ethernet (Descripción):** {nombre_puerto}")
        
        # E. **Obtener VLAN (Requiere OID específico del fabricante)**
        # Este paso es el más dependiente del fabricante (Cisco, HP, etc.)
        # El OID comúnmente usado es del Bridge MIB para la VLAN ID: 1.3.6.1.2.1.17.7.1.4.2.1.3.<VLAN_INDEX>
        # Se necesita un OID específico para mapear el puerto a la VLAN.
        
        print("\n**4. Información de VLAN:** ⚠️ El OID de la VLAN es específico del fabricante.")
        print(f"   (Se necesita una consulta SNMP adicional con el OID correcto para el índice {puerto_index})")
        
    except Exception as e:
        print(f"\n🛑 Error general al ejecutar la consulta SNMP: {e}")

# --- Ejecución ---
if __name__ == "__main__":
    identificar_puerto_lan()
