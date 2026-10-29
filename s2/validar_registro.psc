Algoritmo Validar_Registro
	definir edad Como Entero
	definir respuesta Como Caracter
	Escribir "¿Cuántos años tienes?"
	Leer edad
	Escribir "¿Aceptas los terminos? (S/N)"
	Leer respuesta
	respuesta <- Mayusculas(respuesta)
	si edad >= 14 y respuesta = "S" Entonces
		Escribir "Registro exitoso"
		
	SiNo
		Escribir "No puedes registrarte"
		
	FinSi
	
FinAlgoritmo
