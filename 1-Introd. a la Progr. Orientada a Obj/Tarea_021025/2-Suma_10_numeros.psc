Algoritmo Suma_10_numeros
	Definir num, c, r Como Entero
	Escribir '***INTRODUCE DIEZ NUMEROS PARA SUMARLOS***'

	Escribir ''
	
	Repetir
		Leer NUM
		c <- c+1
		
		r= r+num
		Limpiar Pantalla
		Escribir "Siguente Número"
	Hasta Que c=10
	
	Escribir "La sumatoria total es: ",r
	
FinAlgoritmo
