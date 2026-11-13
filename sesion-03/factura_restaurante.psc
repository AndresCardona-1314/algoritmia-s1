
SubProceso subtotal <- LeerPedido
	Definir precio, subtotal como Real
	Definir cantidad Como Entero
	
	subtotal <- 0
	
	Escribir "Ingrese el precio del producto: "
	Leer precio
	
	Mientras precio <> 0 Hacer
		Escribir "Ingrese la cantidad: "
		Leer cantidad
		subtotal <- subtotal + (precio*cantidad)
		Escribir "Ingrese el precio del siguiente producto (Ingrese 0 para terminar): "
		Leer precio
	FinMientras
	
FinSubProceso


SubProceso resultado <- CalcularPorcentaje (subtotal, porcentaje)
	Definir resultado Como Real
	resultado <- (subtotal * porcentaje)/100
FinSubProceso

SubProceso ImprimirFactura (subtotal, impuesto, propina, total)
	Escribir "========================================="
	Escribir "FACTURA DE VENTA"
	Escribir "========================================="
	Escribir "Subtotal: $", subtotal
	Escribir "Impuesto (8%): $", impuesto
	Escribir "propina (10%): $", propina
	Escribir "Total a pagar: $", total
	
FinSubProceso




Algoritmo factura_restaurante
	Definir  impuesto, propina, subtotal, total Como Real
	
	subtotal <- LeerPedido()
	impuesto <- CalcularPorcentaje(subtotal,8)
	propina <- CalcularPorcentaje(subtotal, 10)
	
	total <- subtotal + impuesto + propina
	
	ImprimirFactura(subtotal,impuesto,propina,total)
	
	
	
	
	
	
	
	
FinAlgoritmo
