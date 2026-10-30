// @ts-check

/**
 * @typedef { import('sequelize').Sequelize } SequelizeInstance
 * @typedef { import('sequelize').DatabaseError } SequelizeDatabaseError
 * @typedef { import('sequelize').ConnectionError } SequelizeConnectionError
 */

// Environments
import './config/env.js'

import { fileURLToPath } from 'node:url'
import { dirname, join } from 'node:path'

import express from 'express'

import AppRoutes from './router/index.js'
import db from './config/db.js'

const app = express()

const port = process.env.PORT || 3000

// Obtener el directorio actual (equivalente a __dirname en ESM)
const __filename = fileURLToPath(import.meta.url)
const __dirname = dirname(__filename)

/** Locals */
app.use((req, res, next) => {
  const year = new Date().getFullYear()
  res.locals.actualYear = year
  res.locals.nombreSitio = 'Agencia de viajes'
  next()
})

/** Definir la carpeta publica */
app.use('/public', express.static(join(__dirname, 'public')))

/** Definir las vistas */
app.set('view engine', 'pug')
app.set('views', join(__dirname, 'views'))

app.use(AppRoutes)

try {
  await db.sequelize.authenticate()

  const dbName = db.sequelize.getDatabaseName()
  const dbVersion = await db.sequelize.databaseVersion()
  const dbDialect = await db.sequelize.getDialect()

  console.log(`Conectado a la BD: ${dbName}, Dialect: ${dbDialect}`)
} catch (error) {
  /** @type { SequelizeConnectionError } */
  const err = error
  throw Error(err.message)
}

app.listen(port, () => {
  console.log(`El servidor esta funcionando en el puerto ${port}`)
})
