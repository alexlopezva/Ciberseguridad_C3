Algoritmo Suma_todo
	Definir n1, total Como Entero
	Escribir 'Introduzca numeros para sumarlos'
	Escribir 'Si quiere terminar escriba 0, de lo contrario siga introduciendo numeros:'
	Leer n1
	Mientras n1<>0 Hacer
		total <- total+n1
		Escribir 'La sumatoria es:', total
		Escribir 'Presione una tecla para continuar...'
		
		Esperar Tecla
		Limpiar Pantalla
		
		Escribir 'Introduzca numeros para sumarlos'
		Escribir 'Si quiere terminar escriba 0, de lo contrario siga introduciendo numeros:'
		Leer n1
		
		Limpiar Pantalla
		
	FinMientras
FinAlgoritmo
