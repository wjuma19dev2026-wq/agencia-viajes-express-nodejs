# Agencia de Viajes

Aplicación web para una agencia de viajes desarrollada con Node.js, Express y Pug, siguiendo una estructura modular con vistas, rutas y componentes reutilizables.

## Descripción

Proyecto basado en el curso "JavaScript Moderno: Guía Definitiva". La aplicación sirve páginas renderizadas desde el servidor utilizando el motor de plantillas Pug, con estilos con Bootstrap 5 y una configuración de desarrollo con recarga automática tanto del servidor como del navegador.

## Características actuales

- **Servidor con Express**: Aplicación montada con `Express 5` en ES Modules (`type: module`).
- **Motor de plantillas Pug**: Vistas organizadas bajo `views/` con un layout base (`views/layout/AppLayout.pug`).
- **Ruteo modular**: Rutas centralizadas en `router/index.js`.
- **Archivos estáticos**: Servidos desde `public/` bajo la ruta `/public`.
- **Bootstrap 5**: Incluido vía CDN junto a Bootstrap Icons en el layout base.
- **Tipografías Google Fonts**: `Covered By Your Grace` y `Staatliches`.
- **Desarrollo con auto-recarga**: 
  - `nodemon` para reiniciar el servidor al guardar cambios.
  - `browser-sync` con proxy a `http://localhost:3000` para refrescar el navegador automáticamente en `http://localhost:3001`.
- **Configuración flexible**: `nodemon.json` para vigilar extensiones y carpetas específicas.

## Tecnologías

- [Node.js](https://nodejs.org/) (ES Modules)
- [Express 5](https://expressjs.com/)
- [Pug](https://pugjs.org/)
- [Bootstrap 5](https://getbootstrap.com/)
- [Bootstrap Icons](https://icons.getbootstrap.com/)
- [Nodemon](https://nodemon.io/)
- [BrowserSync](https://browsersync.io/)
- [Concurrently](https://www.npmjs.com/package/concurrently)

## Instalación

1. Clona el repositorio
2. Abre la carpeta del proyecto
3. Instala las dependencias:

```bash
npm install
```

## Ejecución en desarrollo

Para levantar el servidor con auto-recarga del servidor y del navegador:

```bash
npm run dev
```

Esto ejecutará:

- `npm run server` → `nodemon app.js -e js,json,pug,css` (servidor en `http://localhost:3000`)
- `npm run bs` → `browser-sync` con proxy y recarga en `http://localhost:3001`

**Importante:** Para ver los cambios con recarga automática, utiliza `http://localhost:3001`.

Si solo quieres levantar el servidor sin BrowserSync:

```bash
npm run server
```

## Estructura del proyecto

```text
agencia-viajes/
├── app.js              # Configuración de Express, vistas, estáticos y rutas
├── bs-config.js        # Configuración de BrowserSync
├── nodemon.json        # Configuración de nodemon
├── package.json
├── public/             # Archivos estáticos (CSS, JS, imágenes)
│   ├── css/
│   └── js/
├── router/             # Definición de rutas
│   └── index.js
├── views/              # Vistas con Pug
│   ├── layout/
│   │   ├── AppLayout.pug
│   │   ├── header.pug
│   │   └── footer.pug
│   └── nosotros.pug
└── README.md
```

## Rutas actuales

| Método | Ruta | Descripción |
| --- | --- | --- |
| GET | `/` | Renderiza la vista `nosotros.pug` |

## Contribución

Las mejoras, correcciones y nuevas funcionalidades son bienvenidas. Puedes abrir un pull request con tus cambios.

## Licencia

Este proyecto se distribuye bajo la licencia MIT.
