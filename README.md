# Agencia de Viajes

Aplicación para gestionar paquetes turísticos, reservas y clientes de una agencia de viajes.

## Descripción

Este proyecto está pensado como una base para practicar JavaScript moderno, programación modular y desarrollo de interfaces con componentes reutilizables. Permite manejar información como destinos, precios, fechas y clientes.

## Funcionalidades

- Registro y listado de destinos turísticos
- Cálculo de precios por paquete
- Gestión de reservas
- Validación básica de datos de clientes
- Estructura fácil de ampliar con nuevas funciones

## Tecnologías

- HTML5
- CSS3
- JavaScript ES6+
- Node.js (si se requiere backend o scripts de entorno)

## Instalación

1. Clona el repositorio.
2. Abre la carpeta del proyecto.
3. Instala las dependencias:

```bash
npm install
```

4. Inicia la aplicación:

```bash
npm start
```

## Estructura del proyecto

```text
agencia-viajes/
├── index.html
├── styles/
│   └── main.css
├── scripts/
│   ├── app.js
│   ├── viajes.js
│   └── reservas.js
├── README.md
└── package.json
```

## Ejemplo de código

```javascript
const destinos = [
  { nombre: 'Cancún', precio: 1200 },
  { nombre: 'Paris', precio: 1800 },
  { nombre: 'Roma', precio: 1500 },
]

const obtenerDestinoMasBarato = destinos => {
  return destinos.reduce((min, destino) => {
    return destino.precio < min.precio ? destino : min
  })
}

const mejorOpcion = obtenerDestinoMasBarato(destinos)
console.log(`La mejor opción es ${mejorOpcion.nombre} por $${mejorOpcion.precio}`)
```

## Ejemplo de reserva

```javascript
const reserva = {
  cliente: 'Ana López',
  destino: 'Cancún',
  personas: 2,
  precioPorPersona: 1200,
}

const calcularTotalReserva = ({ personas, precioPorPersona }) => {
  return personas * precioPorPersona
}

console.log(`Total de la reserva: $${calcularTotalReserva(reserva)}`)
```

## Contribución

Las mejoras, correcciones y nuevas funcionalidades son bienvenidas. Puedes abrir un pull request con tus cambios.

## Licencia

Este proyecto se distribuye bajo la licencia MIT.
