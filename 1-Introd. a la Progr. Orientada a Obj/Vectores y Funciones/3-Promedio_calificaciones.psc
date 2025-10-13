funcion resultado <- promedio(a,b,c)
	
	resultado = (a + b + c) / 3
	
	si resultado >= 70 Entonces
		Escribir "Usted Aprobo"
		
	SiNo
		Escribir "Usted Reprobo"
	FinSi
FinFuncion

Algoritmo Promedio_calificaciones
	
	Definir n1, n2, n3 Como Entero
	Definir resultado Como real
	
	Escribir "Ingrese nota de Matematica: " Sin Saltar
	Leer n1
	
	Escribir "Ingrese nota de Ciencias Sociales: " Sin Saltar
	Leer n2
	
	Escribir "Ingrese nota de Ciencias Naturales: " Sin Saltar
	Leer n3
	
	resultado <- promedio(n1,n2,n3)
	
	Escribir resultado
	
FinAlgoritmo
