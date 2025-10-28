#Crea un diccionario llamado 'dispositivo_red' con la siguiente información:
#- 'IP': '192.168.1.10' - 'Hostname': 'Firewall-Corp' - 'Estado': 'Activo'
dispositivo_red = {
    'IP': '192.168.1.10',
    'Hostname': 'Firewall-Corp',
    'Estado': 'Activo'
}
#Imprime el diccionario completo
print(dispositivo_red)
#Muestra solo el valor asociado a la clave 'Hostname'
print(dispositivo_red['Hostname'])
#Agrega una nueva clave 'Ubicación' con el valor 'Data Center 1'
dispositivo_red['Ubicación'] = 'Centro de Datos'
#Cambia el valor de 'Estado' a 'Inactivo'.
dispositivo_red['Estado'] = 'Inactivo'
#Muestra todo el diccionario actualizado.
print(dispositivo_red)

