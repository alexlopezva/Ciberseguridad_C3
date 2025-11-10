import re

# Aca se almacenan los usuarios y contraseñas en vectores
usuarios = []
contrasenas = []
fortalezas = []

def verificar_contrasena(contrasena):
    #parametros para verificar la fortaleza de la contraseña
    puntos = 0
    
    # cantidad de caracteres (mínimo 8)
    if len(contrasena) >= 8:
        puntos += 1
        
    # debe contener letras mayúsculas
    if re.search(r'[A-Z]', contrasena):
        puntos += 1
        
    # debe contener letras minúsculas
    if re.search(r'[a-z]', contrasena):
        puntos += 1
    
    # debe contener números
    if re.search(r'[0-9]', contrasena):
        puntos += 1
        
    # debe tener caracteres o símbolos (no alfanuméricos)
    if re.search(r'[\W_]', contrasena): 
        puntos += 1

    # Asignación de Fuerza: (5 puntos posibles)
    if puntos >= 5:
        return "Fuerte"
    elif puntos >= 3:
        return "Media"
    else:
        return "Débil"

def crear_usuario(nuevo_usuario, nueva_contrasena):
    #Registro de usuarios y valida si el usuario ya existe
    
    if nuevo_usuario in usuarios:
        print(f"\n Error: El usuario '{nuevo_usuario}' ya existe. Intente con otro nombre.")
        return

    fuerza_calculada = verificar_contrasena(nueva_contrasena)
    
    usuarios.append(nuevo_usuario)
    contrasenas.append(nueva_contrasena)
    fortalezas.append(fuerza_calculada)
    
    print(f"\n Usuario '{nuevo_usuario}' registrado con éxito.") 
    print(f"   Fortaleza de la contraseña: **{fuerza_calculada}**")
    
    # generar_alertas para verificar todos los usuarios después del registro
    generar_alertas()

def generar_alertas():
    #Verifica todos los usuarios y notifica si alguna contraseña no es segura
    
    if not usuarios:
        return

    print("\n--- Verificación de Estado (Todos los Usuarios) ---")
    alerta_encontrada = False
    
    # Bucle: Recorrer todos los usuarios registrados
    for i in range(len(usuarios)):
        usuario = usuarios[i]
        fuerza = fortalezas[i]
        
        # Condicionales: Emitir alertas
        if fuerza == "Fuerte":
            print(f" El usuario '{usuario}' tiene una contraseña **{fuerza}**.")
        else:
            print(f" ALERTA: El usuario '{usuario}' tiene una contraseña **{fuerza}**. Se recomienda cambiarla.")
            alerta_encontrada = True 
            
    if not alerta_encontrada:
        print("\n¡Excelente! Todas las contraseñas registradas son seguras.")
    print("---------------------------------------------------------")


# --- FUNCIÓN PRINCIPAL INTERACTIVA ---
def menu_principal():
    
    while True:
        print("\n\n*** Gestor de Contraseñas Seguras ***")
        print("1. Crear Nuevo Usuario y Verificar Contraseña")
        print("2. Mostrar estado actual de alertas")
        print("3. Salir")
        
        opcion = input("Seleccione una opción (1-3): ")
        
        if opcion == '1':
            user = input("Ingrese el nombre de usuario: ")
            # Se recomienda usar la biblioteca 'getpass' para ocultar la contraseña,
            # pero por simplicidad se usa 'input' aquí.
            pwd = input("Ingrese la nueva contraseña: ") 
            crear_usuario(user, pwd)
        elif opcion == '2':
            generar_alertas()
        elif opcion == '3':
            print("\nGracias por usar el Gestor de Contraseñas Seguras.")
            print("COPIRIGHT ALEXANDER LOPEZ VASQUEZ")
            break
        else:
            print("\nOpción no válida. Inténtelo de nuevo.")

# menú principal
if __name__ == "__main__":
    menu_principal()
    