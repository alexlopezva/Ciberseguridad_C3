Funcion resultado <- validacion(num1)
	
	r = num1 mod 2
	
	si r = 0 Entonces
		resultado <- Verdadero
		Escribir resultado
	sino 
		resultado <- Falso
		Escribir resultado
	FinSi
	
FinFuncion

Algoritmo Numero_Par_Impar
	
	Definir num1 Como Entero 
	Definir r Como Real
	Definir resultado Como Logico
	Escribir "Ingrese un número para validar si es par o impar"
	leer num1
	
	resultado <-validacion(num1)
	
FinAlgoritmo
