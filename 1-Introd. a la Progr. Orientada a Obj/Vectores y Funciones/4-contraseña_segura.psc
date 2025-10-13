Funcion resultado <- validacion(contador)
	definir resultado Como Logico
	
	resultado <- falso
	Si contador > 8 Entonces
		resultado <- Verdadero
	FinSi
FinFuncion

Algoritmo Contraseña_Segura
	Definir contador Como Entero
	Definir contrasena como cadena	
		
	Escribir "Ingrese una contraseña segura: " Sin Saltar
	Leer contrasena
	
	contador <- Longitud(contrasena)
	
	resultado <- validacion(contador)
	
	si resultado entonces 
		Escribir resultado
	sino 
		Escribir "Su contraseña no es segura"
		
	FinSi
	
FinAlgoritmo
