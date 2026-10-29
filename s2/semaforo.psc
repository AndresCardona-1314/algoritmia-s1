Algoritmo semaforo
	definir unidades Como Real
	Escribir "Ingrese el número de unidades: "
	Leer  unidades
	Si unidades < 0 Entonces
		Escribir "Error"
		
	SiNo
		Si unidades == 0 Entonces
			Escribir "Rojo: agotado"
			
		SiNo
			Si unidades >= 1 y unidades <= 10 Entonces
				Escribir "Amarillo: pedir"
				
			SiNo
				
				Si unidades > 10 Entonces
					Escribir "Verde: Todo bien"
				FinSi	
				
			FinSi
			
		FinSi
				
	FinSi
	
	
	
FinAlgoritmo
