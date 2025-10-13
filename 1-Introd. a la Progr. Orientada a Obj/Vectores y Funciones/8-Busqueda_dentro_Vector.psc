Algoritmo Busqueda_dentro_Vector
	
	// Declarar variables y el vector de 8 posiciones
	
    Dimension numeros[8]
    Definir i, num_ingresado, num_buscar Como Entero
	
    // La variable 'encontrado' será una bandera booleana (Verdadero/Falso)
	
    Definir encontrado Como Logico
	
    // Inicializar la bandera
	
    encontrado <- Falso
	
    Escribir "--- Llenado del Vector ---"
    Para i <- 1 Hasta 8 Con Paso 1 Hacer
        Escribir "Ingrese el número para la posición ", i, ": "
        Leer num_ingresado
        numeros[i] <- num_ingresado
    FinPara
	
    Escribir ""
	
    // Solicitar el número a buscar
    Escribir "--- Búsqueda ---"
    Escribir "Ingrese el número que desea buscar en el vector: "
    Leer num_buscar
	
    // Buscar el número en el vector
    Para i <- 1 Hasta 8 Con Paso 1 Hacer
		
        // Comprobar si el elemento actual es igual al número a buscar
		
        Si numeros[i] = num_buscar Entonces
            encontrado <- Verdadero 
            i <- 8
        FinSi
    FinPara
	
    Escribir ""
	
    // Imprimir resultado
	
    Si encontrado Entonces
        Escribir "¡Felicidades! El número ", num_buscar, " se encuentra en el vector."
    SiNo
        Escribir "Lo sentimos. El número ", num_buscar, " NO se encontró en el vector."
    FinSi
	
FinAlgoritmo
