Algoritmo piramide
	
	Definir i, j, alto, fila Como Entero
	
	Escribir "ingrese la altura de la pirámide: "
	Leer alto
	
	Para fila <- 1 Hasta alto Hacer
		Para i <- 1 Hasta (alto - fila) Con Paso 1 Hacer
			
			Escribir Sin Saltar " "
		FinPara
		Para j <- 1 Hasta (2 * fila - 1) Hacer
			Escribir Sin Saltar "*"
		FinPara
		Escribir ""
	FinPara
	
	
	
FinAlgoritmo
