// @ts-check

/**
 * @typedef {Object} DbInstance
 * @property {import('sequelize').Sequelize} sequelize - La instancia de conexión
 */

import { Sequelize } from 'sequelize'

/** @type { DbInstance } */
const db = {}

db.sequelize = new Sequelize(
  process.env.DB_NAME || '', // nombre de la base de datos
  process.env.DB_USER || 'root', // usuario
  process.env.DB_PASS || '', // contraseña
  {
    host: process.env.DB_HOST || 'localhost',
    port: Number(process.env.DB_PORT) || 3306,
    dialect: 'mysql',
    // Muestra el SQL generado solo en desarrollo
    logging: process.env.NODE_ENV === 'development' ? console.log : false,
    define: {
      timestamps: true, // agrega createdAt / updatedAt
      underscored: false, // createdAt en vez de created_at
      freezeTableName: true, // no pluraliza los nombres de tabla
    },
    pool: {
      max: 5,
      min: 0,
      acquire: 30000, // ms máximos esperando una conexión
      idle: 10000, // ms antes de liberar una conexión inactiva
    },
  },
)

export default db
