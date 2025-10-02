Algoritmo Descuento_Facturacion
	Definir monto, porciento, descuento, R Como Real
	porciento <- 0.10
	Leer monto
	descuento <- monto*porciento
	Si monto>500 Entonces
		R <- monto-descuento
		Escribir 'Se aplico un 10% de descuento.'
		Escribir 'Monto a pagar: ', R
	SiNo
		Escribir 'No aplica descuento.'
		Escribir 'Monto a pagar: ', monto
	FinSi
FinAlgoritmo
