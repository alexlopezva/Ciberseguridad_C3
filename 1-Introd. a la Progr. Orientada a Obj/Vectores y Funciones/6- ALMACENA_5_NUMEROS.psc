Algoritmo ALMACENA_5_NUMEROS
	// Declarar el vector (array) de 5 posiciones
	Dimensionar numeros(5)
	Definir i, num Como Entero
	// Pedir al usuario que ingrese 5 números y almacenarlos en el vector
	Para i<-1 Hasta 5 Con Paso 1 Hacer
		Escribir 'Ingrese el número para la posición ', i+1, ': '
		Leer num
		numeros[i] <- num
	FinPara // Asignar el número leído a la posición 'i'
	Escribir ''
	// Mostrar todos los valores almacenados en el vector
	Escribir 'Los valores almacenados en el vector son:' // Separador visual
	Para i<-1 Hasta 5 Con Paso 1 Hacer
		Escribir 'Posición ', i+1, ': ', numeros[i]
	FinPara
FinAlgoritmo
