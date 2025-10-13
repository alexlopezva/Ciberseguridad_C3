Algoritmo Promedio_Calificaciones
	
	Dimensionar calificaciones(5)
	
	Definir i Como Entero
	Definir suma_total, promedio_general, calificacion_actual Como Real
	
	suma_total <- 0
	
	Escribir '--- Ingreso de Calificaciones ---'
	
	Para i<-1 Hasta 5 Con Paso 1 Hacer
		Escribir 'Ingrese la calificación del estudiante ', i, ': '
		Leer calificacion_actual
		calificaciones[i] <- calificacion_actual
		suma_total <- suma_total+calificaciones[i]
	FinPara
	
	Escribir ''
	
	promedio_general <- suma_total/5
	
	Escribir '--- Resultados ---'
	
	Escribir 'La suma total de las calificaciones es: ', suma_total
	
	Escribir 'El promedio general del grupo de 5 estudiantes es: ', promedio_general
	
FinAlgoritmo
