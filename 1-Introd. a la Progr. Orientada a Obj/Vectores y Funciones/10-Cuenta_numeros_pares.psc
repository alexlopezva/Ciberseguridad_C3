Algoritmo Cuenta_numeros_pares
	
    Dimension numeros[10]
    Definir i, num_ingresado Como Entero
    Definir contador_pares Como Entero
	
    contador_pares <- 0
	
    Escribir "--- Llenado del Vector ---"
	
    Para i <- 1 Hasta 10 Con Paso 1 Hacer
        Escribir "Ingrese el número ", i, ": "
        Leer num_ingresado
        numeros[i] <- num_ingresado
    FinPara
	
    Escribir ""
	
    Para i <- 1 Hasta 10 Con Paso 1 Hacer

        Si (numeros[i] MOD 2) = 0 Entonces

            contador_pares <- contador_pares + 1
        FinSi
    FinPara
	
    Escribir ""
	
    Escribir "--- Resultado de la Búsqueda ---"
	
    Escribir "Se han revisado 10 números en total."
	
    Escribir "El número total de elementos pares encontrados es: ", contador_pares

FinAlgoritmo
