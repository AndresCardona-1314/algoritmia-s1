Algoritmo CalcularEdadEnDias
	Definir cuenta, propina, division, personas, total Como Entero
	Escribir 'Escribe el total de la cuenta: '
	Leer cuenta
	Escribir 'Escribe el porcentaje de propina en (%): '
	Leer propina
	Escribir 'Escribe el número de personas que pagarán la cuenta: '
	Leer personas
	propina <- (cuenta*propina)/100
	total <- cuenta+propina
	Si personas<=0 Entonces
		Escribir 'Ingresa un número de personas mayor a 0'
	SiNo
		division <- total/personas
		Escribir 'La propina es: ', propina, ' ', 'El total de la cuenta es: ', total, ' ', 'Cada persona pagará: ', division
	FinSi
FinAlgoritmo
