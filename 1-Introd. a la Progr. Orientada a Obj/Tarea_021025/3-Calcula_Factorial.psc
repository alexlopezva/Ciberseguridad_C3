Algoritmo Calcula_Factorial
	Definir n, i, factorial Como Entero
	Escribir 'Introduce un número: '
	Leer n
	factorial <- 1
	i <- 1
	Repetir
		factorial <- factorial*i
		i <- i+1
	Hasta Que i>n
	Escribir 'El factorial de ', n, ' es: ', factorial
FinAlgoritmo
