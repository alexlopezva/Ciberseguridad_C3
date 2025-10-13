Algoritmo SUMADOR_POSICION_VECTOR
	
	// Declarar el vector (array) de 10 posiciones
    Dimension numeros[10]
    Definir i, num Como Entero
    Definir suma_total Como Entero
	
    suma_total <- 0
	
    // Pedir al usuario que ingrese 10 números y almacenarlos en el vector
	
    Para i <- 1 Hasta 10 Con Paso 1 Hacer
        Escribir "Ingrese el número ", i, ": "
        Leer num;
        numeros[i] <- num 
    FinPara
	
    Escribir ""
	
    // Recorrer el vector y calcular la suma total
	
    Para i <- 1 Hasta 10 Con Paso 1 Hacer
        // Acumular el valor de cada elemento del vector
        suma_total <- suma_total + numeros[i]
		
    FinPara
	
    // Mostrar el resultado
    Escribir "Los valores ingresados han sido almacenados."
    Escribir "La suma total de todos los elementos es: ", suma_total
	
	
FinAlgoritmo
