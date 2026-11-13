Algoritmo calificaciones
	
	Definir i, aprobados Como Entero
	Definir MaxNota, MinNota, suma, promedio, nota Como Real
	Definir perdio Como Logico
	suma <- 0
	aprobados <- 0
	perdio <- Falso
	MaxNota <- -1
	MinNota <- 6
	
	Para i <- 1 Hasta 5 Hacer
		Escribir "Ingrese la nota del ", i, " estudiante: "
		Leer nota
		
		suma <- suma + nota
		
		Si nota >= 3.0 Entonces
			aprobados <- aprobados + 1
			
		SiNo
			perdio <- Verdadero
			
		FinSi
		
		Si nota > MaxNota Entonces
			MaxNota <- nota
		FinSi
		
		Si nota < MinNota Entonces
			MinNota <- nota
		FinSi
	FinPara
	
	promedio <- suma/5
	Escribir "El promedio de notas es: ", promedio
	Escribir "La cantidad de estudiantes que aprobaron fue: ", aprobados
	Escribir "La máxima nota sacada fue de: ", MaxNota, " La nota más baja sacada fue de: ", MinNota
	Escribir "¿Perdió algún estudiante?: ", perdio
	
	
	
	
	
FinAlgoritmo
