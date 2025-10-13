Funcion resultado <- MayorNumero (n1, n2, n3)
	// Comprobamos si n1 es el mayor
	Si (n1 > n2) y (n1 > n3) Entonces
		resultado <- n1
	SiNo
		// Si n1 no es el mayor, comprobamos si n2 es el mayor
		Si (n2 > n3) Entonces
			resultado <- n2
		SiNo
			// Si ni n1 ni n2 son los mayores, entonces n3 debe ser el mayor
			resultado <- n3
		FinSi
	FinSi
Fin Funcion

Algoritmo El_Mayor_de_tres
	Definir num1, num2, num3, elMayor Como Real
	
	// Solicitar los tres números al usuario
	Escribir "Ingrese el primer número:" 	
	Leer num1;
	Escribir "Ingrese el segundo número:"
	Leer num2;
	Escribir "Ingrese el tercer número:"
	Leer num3;
	
	// Llamar a la función
	elMayor <- MayorNumero(num1, num2, num3)
	
	// Mostrar el resultado
	Escribir "El mayor de los tres números (", num1, ", ", num2, ", ", num3, ") es: ", elMayor
	
FinAlgoritmo
