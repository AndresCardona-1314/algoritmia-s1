Algoritmo parqueadero
	Definir minutos, total Como Real
	Definir vehiculo, factura, horas Como Entero
	
	Escribir "Ingrese el tipo de vehiculo: 1. Carro  2. Moto"
	Leer vehiculo
	Escribir "¿Tiene factura del centro comercial?: 1. Sí  2. No"
	Leer factura
	Escribir "Ingrese el número de minutos que estuvo parqueado el vehiculo: "
	Leer minutos
	
	Si vehiculo <> 1 y vehiculo <> 2 Entonces
		Escribir "Error: ingresó un tipo de vehiculo incorrecto"
	SiNo
		Si factura <> 1 y factura <> 2 Entonces
			Escribir "Error: ingresó un número incorrecto"
		SiNo
			Si minutos < 0 Entonces
				Escribir "Ingresaste un valor de minutos menor a 0"
			SiNo
				Si minutos <= 15 Entonces
					Escribir "No paga nada: Gratis"
				SiNo
					horas <- TRUNC((minutos + 59) / 60)
					
					Si vehiculo = 1 Entonces
						total <- horas * 4000
					SiNo
						total <- horas * 2000
					FinSi
					
					
					Si total > 30000 Entonces
						total <- 30000
					FinSi
					
					
					Si factura = 1 y total >= 30000 Entonces
						total <- total / 2
					FinSi
					
					Escribir "El vehiculo estuvo parqueado ", horas, " horas"
					Escribir "El total a pagar es: $", total
				FinSi
			FinSi
		FinSi
	FinSi
FinAlgoritmo
