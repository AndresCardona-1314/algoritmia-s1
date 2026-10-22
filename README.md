# Ejemplos de ejecución de los programas

En cada ejemplo, las líneas que comienzan con `>` representan los datos ingresados en la consola de PSeInt.

## `Saludo.psc`

El programa solicita un nombre y lo utiliza en el saludo.

### Ejemplo 1

```text
¿Cómo te llamas?
> Andrés
Hola, Andrés. Bienvenido a Algoritmia
```

### Ejemplo 2

```text
¿Cómo te llamas?
> María
Hola, María. Bienvenido a Algoritmia
```

## `Propinas.psc`

El programa calcula la propina, la suma al valor de la cuenta y divide el total entre las personas. Si el número de personas es menor o igual a cero, muestra un mensaje de validación.


### Ejemplo 1: cuenta dividida entre cuatro personas

```text
Escribe el total de la cuenta:
> 100000
Escribe el porcentaje de propina en (%):
> 10
Escribe el número de personas que pagarán la cuenta:
> 4
La propina es: 10000 El total de la cuenta es: 110000 Cada persona pagará: 27500
```

### Ejemplo 2: número de personas no válido

```text
Escribe el total de la cuenta:
> 85000
Escribe el porcentaje de propina en (%):
> 15
Escribe el número de personas que pagarán la cuenta:
> 0
Ingresa un número de personas mayor a 0
```

## `PromedioNotas.psc`

El programa verifica que las tres notas estén entre 0 y 5. Si lo están, calcula y muestra el promedio.

### Ejemplo 1

```text
Ingrese la nota 1, debe ser un valor entre 0 y 5:
> 4
Ingrese la nota 2, debe ser un valor entre 0 y 5:
> 3.5
Ingrese la nota 3, debe ser un valor entre 0 y 5:
> 4.5
el promedio de notas es: 4
```

### Ejemplo 2

```text
Ingrese la nota 1, debe ser un valor entre 0 y 5:
> 3
Ingrese la nota 2, debe ser un valor entre 0 y 5:
> 3
Ingrese la nota 3, debe ser un valor entre 0 y 5:
> 4
el promedio de notas es: 3.3333333333333335
```

## `EdadEnDias.psc`

El programa recibe una edad en años y la convierte a días, meses, semanas, horas, minutos y segundos. Los cálculos usan las equivalencias fijas indicadas en el código (365 días y 12 meses por año, entre otras).

### Ejemplo 1

```text
Ingrese su edad:
> 20
Su edad en días es: 7300
Su edad en meses es: 240
Su edad en semanas es: 1040
Su edad en horas es: 175200
Su edad en minutos es: 10512000
Su edad en segundos es: 630720000
```

### Ejemplo 2

```text
Ingrese su edad:
> 35
Su edad en días es: 12775
Su edad en meses es: 420
Su edad en semanas es: 1820
Su edad en horas es: 306600
Su edad en minutos es: 18396000
Su edad en segundos es: 1103760000
```
