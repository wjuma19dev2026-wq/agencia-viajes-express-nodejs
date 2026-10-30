// @ts-check

/**
 * @typedef {import('sequelize').Model<UserAttributes, UserCreationAttributes> & UserAttributes} UserModel
 * @typedef {import('sequelize').Model<PostAttributes, PostCreationAttributes> & PostAttributes} PostModel
 */

// 2. Defines el tipo del objeto 'db'
/**
 * @typedef {Object} DbInstance
 * @property {UserModel} User
 * @property {PostModel} Post
 * @property {import('sequelize').Sequelize} sequelize - La instancia de conexión
 */

import { Sequelize } from 'sequelize'

/**
 * Conexión a MySQL con Sequelize.
 * Los valores se pueden sobreescribir con variables de entorno.
 */

/** @type { DbInstance } */
const db = {}

db.sequelize = new Sequelize(
  process.env.DB_NAME || 'agencia_de_viajes', // nombre de la base de datos
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
