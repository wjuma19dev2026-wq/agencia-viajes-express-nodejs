import { fileURLToPath } from 'node:url'
import { dirname, join } from 'node:path'
import express from 'express'

import AppRoutes from './router/index.js'

const app = express()

const port = process.env.PORT || 3000

// Obtener el directorio actual (equivalente a __dirname en ESM)
const __filename = fileURLToPath(import.meta.url)
const __dirname = dirname(__filename)

/** Definir la carpeta publica */
app.use('/public', express.static(join(__dirname, 'public')))

/** Definir las vistas */
app.set('view engine', 'pug')
app.set('views', join(__dirname, 'views'))

app.use(AppRoutes)

app.listen(port, () => {
  console.log(`El servidor esta funcionando en el puerto ${port}`)
})
