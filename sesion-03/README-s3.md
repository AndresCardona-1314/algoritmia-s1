# Tabla de traza: cajero del parqueadero

Se simula la ejecución con los valores cobrados `4000`, `8000`, `2000` y `0`. El valor `0` cierra la caja.

| Paso | `precio` | `carros` | `total` | Acción |
|---|---:|---:|---:|---|
| Inicialización | — | 0 | 0 | Se inicializan `carros` y `total`. |
| Lectura inicial | 4000 | 0 | 0 | Se lee el primer valor cobrado. |
| Iteración 1 | 4000 | 1 | 4000 | Como `precio <> 0`, se suma el cobro a `total` y se incrementa `carros`. |
| Lectura siguiente | 8000 | 1 | 4000 | Se lee el siguiente valor cobrado. |
| Iteración 2 | 8000 | 2 | 12000 | Como `precio <> 0`, se suma el cobro a `total` y se incrementa `carros`. |
| Lectura siguiente | 2000 | 2 | 12000 | Se lee el siguiente valor cobrado. |
| Iteración 3 | 2000 | 3 | 14000 | Como `precio <> 0`, se suma el cobro a `total` y se incrementa `carros`. |
| Lectura siguiente | 0 | 3 | 14000 | Se lee `0` para cerrar la caja. |
| Fin del ciclo | 0 | 3 | 14000 | La condición `precio <> 0` es falsa; el ciclo termina. |

## Salida

```text
Carros atendidos: 3
Total recaudado: $14000
```