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
import winston from 'winston'
import morgan from 'morgan'
import colors from 'colors'

import AppRoutes from './routes/index.js'
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

/** Winston and Morgan for loggers */
export const logger = winston.createLogger({
  // level: 'info',
  format: winston.format.json(),
  transports: [new winston.transports.Console()],
})

const winstonStream = {
  write: (/** @type { String } */ message) => {
    // 'message' es la línea que genera Morgan (ej. "GET / 200 2.3 ms")
    logger.info(message.trim())
  },
}
// app.use(morgan('combined', { stream: winstonStream }))
app.use(express.urlencoded({ extended: true }))

app.use(AppRoutes)

try {
  await db.sequelize.authenticate()
  await db.sequelize.sync()
  // await db.sequelize.sync({ alter: true })

  const dbName = db.sequelize.getDatabaseName()
  // const dbVersion = await db.sequelize.databaseVersion()
  const dbDialect = await db.sequelize.getDialect()

  console.log(`Conectado a la BD: ${dbName}, Dialect: ${dbDialect}`)
} catch (error) {
  /** @type { SequelizeConnectionError } */
  const err = error
  console.log(`Error al conectar con la base de datos: ${err.message}`.red)
  // throw Error(err.message)
}

app.listen(port, () => {
  console.log(`El servidor esta funcionando en el puerto ${port}`)
})
