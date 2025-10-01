Algoritmo Menu_Cafeteria
	Definir opciones Como Entero
	
	Escribir "***Bienvenido al sistema de pedidos***"
	Escribir ""
	Escribir  "Presione una tecla para iniciar su pedido"
	Esperar Tecla
	
	Limpiar Pantalla
	
	
	
	Repetir //Bucle menu principal hasta que el usuario salga del sistema
		
		Escribir "=======Menu Principal======="
		Escribir "Para ordenar Desayuno marque la opcion 1"
		Escribir "Para ordenar Comida marque la opcion 2"
		Escribir "Para ordenar Cena marque la opcion 3"
		Escribir "Si desea salir del sistema presione la opcion 4"
		
		Escribir "" //agrega un espacio entre el mensaje y el menu para que se vea mas estetico 
		Escribir "Seleccione la opcion deseada."
		Leer opciones
		Limpiar Pantalla
					
		segun opciones Hacer //Menu de opciones 
			1: 
				Escribir "Usted ha ordenado:"
				Escribir "Mangu con salami"
				Escribir ""
				Escribir "Espere mientras preparamos su orden, Gracias!"
				Escribir ""
				Escribir "Para volver al menu principal, presione una tecla:"
				Esperar Tecla
				Borrar Pantalla
			2: 
				Escribir "Usted ha ordenado:"
				Escribir "Arroz Habichuela y Carne"
				Escribir ""
				Escribir "Espere mientras preparamos su orden, Gracias!"
				Escribir ""
				Escribir "Para volver al menu principal, presione una tecla:"
				Esperar Tecla
				Borrar Pantalla
			3:
				Escribir "Usted ha ordenado:"
				Escribir "Hamburguesa CheeseBurger"
				Escribir ""
				Escribir "Espere mientras preparamos su orden, Gracias!"
				Escribir ""
				Escribir "Para volver al menu principal, presione una tecla:"
				Esperar Tecla
				Borrar Pantalla
			
			4:
				Escribir "Saliendo del Sistema"
				Escribir "Presione una Tecla para Salir"
	
			
		FinSegun
		
	Hasta Que opciones =4
	
FinAlgoritmo
