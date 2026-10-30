# Pruebas de escritorio — Sesión 02

## 1. `validar_registro.psc`

### Código de decisión

La ejecución aplica esta condición:

```text
edad >= 14 AND respuesta = "S"
```

`respuesta` se convierte primero a mayúsculas mediante `Mayusculas(respuesta)`.

### Variables y equivalencias

- `E`: la edad es mayor o igual que 14.
- `S`: la respuesta, ya convertida a mayúsculas, es exactamente `"S"`.
- Resultado: `Registro exitoso` cuando `E AND S` es verdadero; en cualquier otro caso, `No puedes registrarte`.

### Tabla de verdad

| `edad` | `respuesta` | `edad AND respuesta` | Resultado |
|---|---|---|---|
| F | F | F | `No puedes registrarte` |
| F | V | F | `No puedes registrarte` |
| V | F | F | `No puedes registrarte` |
| V | V | V | `Registro exitoso` |

### Pruebas de escritorio

| Caso | Edad ingresada | Respuesta ingresada | Respuesta normalizada | Resultado observado |
|---|---:|---|---|---|
| 1 | 13 | `S` | `S` | `No puedes registrarte` |
| 2 | 14 | `N` | `N` | `No puedes registrarte` |
| 3 | 14 | `S` | `S` | `Registro exitoso` |
| 4 | 25 | `n` | `N` | `No puedes registrarte` |
| 5 | 25 | `s` | `S` | `Registro exitoso` |

---

## 2. `validar_edad.psc`

### Código de decisión

El único condicional del archivo es:

```text
edad < 0 OR edad > 120
```

Si la expresión es falsa, el algoritmo no escribe ninguna salida.

### Variables y equivalencias

- `N`: la edad es menor que 0.
- `M`: la edad es mayor que 120.
- Resultado de la decisión: `N OR M`.

### Tabla de verdad

| `N` (`edad < 0`) | `M` (`edad > 120`) | `N OR M` | Mensaje |
|---|---|---|---|
| F | F | F | No hay salida |
| F | V | V | `Edad inválida: edad` |
| V | F | V | `Edad inválida: edad` |
| V | V | V | `Edad inválida: edad` |


### Pruebas de escritorio

| Caso | Edad ingresada | `edad < 0` | `edad > 120` | Acción del programa |
|---|---:|---|---|---|
| 1 | -1 | V | F | Escribir `Edad inválida: -1` |
| 2 | 0 | F | F | No escribir salida |
| 3 | 25 | F | F | No escribir salida |
| 4 | 120 | F | F | No escribir salida |
| 5 | 121 | F | V | Escribir `Edad inválida: 121` |

---

## 3. `parqueadero.psc`

### Variables

- `vehiculo`: `1` representa carro y `2` representa moto.
- `factura`: `1` representa que sí tiene factura; `2` representa que no tiene factura.
- `minutos`: tiempo registrado de permanencia.
- `horas`: resultado de `TRUNC((minutos + 59) / 60)`.
- `total`: valor calculado antes de mostrar la factura.

### Secuencia exacta de las decisiones

```text
Si vehiculo no es 1 ni 2
Entonces error de tipo de vehículo
SiNo
    Si factura no es 1 ni 2
    Entonces error de factura
    SiNo
        Si minutos < 0
        Entonces error de minutos
        SiNo
            Si minutos <= 15
            Entonces gratuito
            SiNo
                calcular horas y total
                aplicar tope de $30.000
                aplicar mitad si hay factura y el total ya llegó a $30.000
                mostrar horas y total
```

### Tabla de verdad de las validaciones iniciales

| Tipo válido `V` | Factura válida `F` | Minutos válidos `M` | Resultado por ruta |
|---|---|---|---|
| F | F/V | F/V | Error: tipo de vehículo incorrecto |
| V | F | F/V | Error: número incorrecto de factura |
| V | V | F | `Ingresaste un valor de minutos menor a 0` |
| V | V | V | Continúa al cálculo de minutos y cobro |

`V` significa que la variable cumple el valor admitido por el algoritmo. Cuando una validación anterior falla, las validaciones siguientes no se ejecutan.

### Tabla de verdad del cobro por minutos

| `minutos <= 15` | Ruta ejecutada |
|---|---|
| V | `No paga nada: Gratis` |
| F | Calcular `horas`, tarifa, tope y posible descuento |

### Tabla de verdad del descuento por factura

El descuento se revisa después de aplicar el tope de `$30.000`.

| Tiene factura | `total >= 30000` después del tope | `factura = 1 AND total >= 30000` | Ruta ejecutada |
|---|---|---|---|
| No (`2`) | No | F | Sin descuento |
| No (`2`) | Sí | F | Sin descuento |
| Sí (`1`) | No | F | Sin descuento |
| Sí (`1`) | Sí | V | `total <- total / 2` |

### Pruebas de escritorio

| Caso | Vehículo | Factura | Minutos | Resultado del cálculo |
|---|---|---|---:|---|
| Tipo inválido | 3 | 1 | 60 | `Error: ingresó un tipo de vehiculo incorrecto` |
| Factura inválida | 1 | 3 | 60 | `Error: ingresó un número incorrecto` |
| Minutos negativos | 2 | 1 | -5 | `Ingresaste un valor de minutos menor a 0` |
| Carro menor o igual a 15 minutos | 1 | 1 | 15 | `No paga nada: Gratis` |
| Moto menor o igual a 15 minutos | 2 | 2 | 10 | `No paga nada: Gratis` |
| Carro, 16 minutos | 1 | 2 | 16 | Horas `1`; total `$4.000` |
| Moto, 61 minutos | 2 | 2 | 61 | Horas `2`; total `$4.000` |
| Carro, 480 minutos, sin factura | 1 | 2 | 480 | Horas `8`; total base `$32.000`; tope `$30.000` |
| Carro, 480 minutos, con factura | 1 | 1 | 480 | Horas `8`; total base `$32.000`; tope `$30.000`; descuento `$15.000` |


---

## 4. `semaforo.psc`

### Código de decisión

Las rutas son mutuamente excluyentes y siguen el siguiente orden:

```text
Si unidades < 0
Entonces Error
SiNo
    Si unidades == 0
    Entonces Rojo
    SiNo
        Si unidades >= 1 y unidades <= 10
        Entonces Amarillo
        SiNo
            Si unidades > 10
            Entonces Verde
```



### Tabla de verdad de las rutas

| `unidades < 0` | `unidades == 0` | `1 <= unidades <= 10` | `unidades > 10` | Resultado |
|---|---|---|---|---|
| V | F | F | F | `Error` |
| F | V | F | F | `Rojo: agotado` |
| F | F | V | F | `Amarillo: pedir` |
| F | F | F | V | `Verde: Todo bien` |


### Pruebas de escritorio

| Caso | Unidades ingresadas | Ruta | Salida |
|---|---:|---|---|
| 1 | -3 | Negativo | `Error` |
| 2 | 0 | Cero | `Rojo: agotado` |
| 3 | 1 | Intervalo 1 a 10 | `Amarillo: pedir` |
| 4 | 10 | Intervalo 1 a 10 | `Amarillo: pedir` |
| 5 | 11 | Mayor que 10 | `Verde: Todo bien` |
| 6 | 50 | Mayor que 10 | `Verde: Todo bien` |

---

## 5. `bisiesto.psc`

### Código de decisión

La expresión exacta del algoritmo es:

```text
(ano % 4 = 0 AND ano % 100 <> 0) OR ano % 400 = 0
```

### Variables y equivalencias

- `C4`: el año es divisible entre 4.
- `C100`: el año es divisible entre 100.
- `C400`: el año es divisible entre 400.
- Primer grupo: `C4 AND NOT C100`.
- Resultado: `(C4 AND NOT C100) OR C400`.

### Tabla de verdad lógica

| `C4` | `C100` | `C400` | `C4 AND NOT C100` | `(... OR C400)` | Resultado |
|---|---|---|---|---|---|
| F | F | F | F | F | No bisiesto |
| F | F | V | F | V | Bisiesto |
| F | V | F | F | F | No bisiesto |
| F | V | V | F | V | Bisiesto |
| V | F | F | V | V | Bisiesto |
| V | F | V | V | V | Bisiesto |
| V | V | F | F | F | No bisiesto |
| V | V | V | F | V | Bisiesto |



### Pruebas de escritorio

| Caso | Año ingresado | `% 4` | `% 100` | `% 400` | Resultado |
|---|---:|---:|---:|---:|---|
| No divisible entre 4 | 2023 | 3 | 23 | 23 | `El año ingresado no es bisiesto: 2023` |
| Divisible entre 4, no entre 100 | 2024 | 0 | 24 | 24 | `El año ingresado es bisiesto: 2024` |
| Divisible entre 100, no entre 400 | 1900 | 0 | 0 | 300 | `El año ingresado no es bisiesto: 1900` |
| Divisible entre 400 | 2000 | 0 | 0 | 0 | `El año ingresado es bisiesto: 2000` |
| Divisible entre 400 | 2400 | 0 | 0 | 0 | `El año ingresado es bisiesto: 2400` |
