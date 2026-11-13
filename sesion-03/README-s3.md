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


## Tabla de traza: pirámide

Se simula el algoritmo `piramide.psc` con `alto = 4`. En cada fila se imprimen primero `alto - fila` espacios y luego `2 * fila - 1` asteriscos.

| Paso | `alto` | `fila` | Iteraciones de `i` (espacios) | Iteraciones de `j` (asteriscos) | Salida de la fila |
|---|---:|---:|---|---|---|
| Lectura | 4 | — | — | — | — |
| Fila 1 | 4 | 1 | `i = 1..3` (3 espacios) | `j = 1..1` (1 asterisco) | `   *` |
| Fila 2 | 4 | 2 | `i = 1..2` (2 espacios) | `j = 1..3` (3 asteriscos) | `  ***` |
| Fila 3 | 4 | 3 | `i = 1..1` (1 espacio) | `j = 1..5` (5 asteriscos) | ` *****` |
| Fila 4 | 4 | 4 | No se ejecuta (0 espacios) | `j = 1..7` (7 asteriscos) | `*******` |

### Salida

```text
   *
  ***
 *****
*******
```



## Árbol de componentes de Riwi



RIWI (App)
│
├── Header [ÚNICO]
│   ├── Logo RIWI
│   ├── Navbar [REPETIDO]
│   │   ├── Inicio
│   │   ├── Empresas
│   │   ├── Coders
│   │   ├── Coworking
│   │   ├── Nosotros
│   │   ├── Comunidad
│   │   └── Blog
│   ├── Selector de idioma
│   └── Menú hamburguesa
│
├── Main
│   │
│   ├── HeroSection [ÚNICO]
│   │   ├── Título principal
│   │   ├── Descripción
│   │   ├── Botón "Saber más"
│   │   ├── Botón "Contáctanos"
│   │   └── Imagen / Slider
│   │
│   ├── ClientsSection [ÚNICO]
│   │   ├── Título de sección
│   │   └── ClientsGrid [REPETIDO]
│   │       ├── ClientLogo
│   │       ├── ClientLogo
│   │       ├── ClientLogo
│   │       └── ... más logos
│   │
│   ├── WhyRiwiSection [ÚNICO]
│   │   ├── FeatureCard [REPETIDO]
│   │   │   ├── Imagen
│   │   │   ├── Título
│   │   │   └── Descripción
│   │   ├── FeatureCard
│   │   └── FeatureCard
│   │
│   ├── ServicesSection [ÚNICO]
│   │   ├── Título de sección
│   │   ├── ServiceCard [REPETIDO]
│   │   │   ├── Empresas
│   │   │   ├── Título
│   │   │   ├── Descripción
│   │   │   ├── Botón "Saber más"
│   │   │   ├── Botón "Contáctanos"
│   │   │   └── Imagen
│   │   │
│   │   ├── ServiceCard
│   │   │   ├── Coders
│   │   │   ├── Título
│   │   │   ├── Descripción
│   │   │   ├── Botón "Saber más"
│   │   │   ├── Botón "Contáctanos"
│   │   │   └── Imagen
│   │   │
│   │   └── ServiceCard
│   │       ├── Coworking
│   │       ├── Título
│   │       ├── Descripción
│   │       └── Imagen
│   │
│   ├── LocationsSection [ÚNICO]
│   │   ├── Título
│   │   ├── Descripción
│   │   ├── Botón de contacto
│   │   └── LocationCard [REPETIDO]
│   │       ├── Medellín
│   │       ├── Dirección
│   │       └── Mapa
│   │       └── Barranquilla
│   │           ├── Dirección
│   │           └── Mapa
│   │
│   ├── ValuePropositionSection [ÚNICO]
│   │   ├── Título
│   │   ├── Descripción
│   │   └── ValueItem [REPETIDO]
│   │       ├── Texto
│   │       └── Texto
│   │       └── Texto
│   │
│   └── PartnersSection [ÚNICO]
│       ├── Título
│       └── PartnerLogo [REPETIDO]
│           ├── Logo aliado
│           ├── Logo aliado
│           └── ... más logos
│
└── Footer [ÚNICO]
    ├── InstagramSection
    ├── Ubicación
    │   ├── Medellín
    │   └── Barranquilla
    ├── ServicesLinks [REPETIDO]
    │   ├── Empresas
    │   ├── Coders
    │   └── Coworking
    ├── PoliciesLinks
    │   ├── Política de tratamiento de datos
    │   └── Términos de uso
    └── Copyright
