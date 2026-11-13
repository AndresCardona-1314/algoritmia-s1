Algoritmo validarPIN
	
	Definir acceso Como Logico
	Definir intentos como Entero
	
	acceso <- Falso
	
	Repetir
		Escribir "Ingrese su PIN: "
		Leer  pin
		intentos <- intentos+1
		
		Si pin = 2580 Entonces
			acceso <- Verdadero
			Escribir "acceso consedido"
			
		
			
		FinSi
		
		
	Hasta Que acceso = Verdadero O intentos = 3
	
	Si intentos = 3 Entonces
		Escribir "Acceso denegado: Bloqueado"
	FinSi
	
	
FinAlgoritmo
