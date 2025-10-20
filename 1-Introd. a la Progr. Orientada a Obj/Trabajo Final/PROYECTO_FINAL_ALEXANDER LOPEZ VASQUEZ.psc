Funcion resultado <- validacion(contra)
	Definir resultado Como Logico
	Si Longitud(contra) > 8 Entonces
		resultado <- Verdadero
	Sino
		resultado <- Falso
	FinSi
FinFuncion

Proceso Sistema_Gestion_de_Contrasena_Segura
	Definir i Como Entero
	Definir usuario, contrasena, contra Como Cadena
	Definir resultado Como Logico
	
	Dimension user[5]
	Dimension clave[5]
	
	Escribir "--- SISTEMA DE GESTIÓN DE CONTRASEÑAS SEGURAS ---"
	Escribir ""
	Escribir "Registre 5 usuarios con su respectiva contraseña"
	Escribir ""
	
	// Registro de usuarios y contraseñas
	Para i <- 1 Hasta 5 Con Paso 1 Hacer
		Escribir "Ingrese el nombre del usuario ", i, ": " Sin Saltar
		Leer user[i]
		Escribir "Ingrese la contraseña para ", user[i], ": " Sin Saltar
		Leer clave[i]
	FinPara
	
	Escribir ""
	Escribir "--- CREDENCIALES ALMACENADAS Y EVALUACIÓN ---"
	
	// Mostrar usuarios y evaluar contraseñas
	Para i <- 1 Hasta 5 Con Paso 1 Hacer
		resultado <- validacion(clave[i])
		Escribir "Usuario ", i, ": ", user[i]
		Escribir "Contraseña: ", clave[i]
		
		Si resultado Entonces
			Escribir "? La contraseña es FUERTE (más de 8 caracteres)"
		Sino
			Escribir "? La contraseña es DÉBIL (8 o menos caracteres)"
		FinSi
		Escribir "" // línea en blanco separadora
	FinPara
	
	Escribir "Proceso completado correctamente."
	Escribir ""
	Escribir "*****Hecho por Alexander Lopez Vasquez******"
FinProceso