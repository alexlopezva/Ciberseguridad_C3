	Algoritmo CONTRASEÑA
		Definir pw, clave Como Caracter
		
		clave = "1234"
		Escribir 'Introduzla la Contraseña:'
		
		Leer pw
		
		Mientras pw <> clave Hacer
			
			Escribir '***CONTRASEÑA INCORRECTA***'
						
			Escribir 'Vuelva a introducir la contraseña:'
			
			Leer pw
			
		FinMientras
		Escribir '*********BIENVENIDO AL SISTEMA*********'
		
FinAlgoritmo
