Algoritmo Tabla_Multiplicar
	
	Definir mul, c, r Como Entero
	Escribir "***INTRODUCE UN NUMERO PARA GENERAR SU TABLA***"
	Escribir " ********DE MULTIPLICACION HASTA EL 10********"
	Escribir ""
	Leer mul
	
	Repetir
		r = mul * c
		
		Escribir mul " x ", c " = ",r
		c= c+1
		
	Hasta Que c=11
	
FinAlgoritmo
