import { DataTypes } from 'sequelize'
import db from '../config/db.js'

const Testimoniales = db.sequelize.define(
  'Testimoniales',
  {
    _id: {
      type: DataTypes.STRING,
      allowNull: false,
      primaryKey: true,
    },
    nombre: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        notEmpty: {
          msg: 'El nombre no puede estar vacío',
        },
      },
    },
    correo: {
      type: DataTypes.STRING,
      unique: true,
      allowNull: false,
      validate: {
        isEmail: {
          msg: 'El correo electrónico no tiene un formato válido',
        },
        notEmpty: {
          msg: 'El correo electrónico no puede estar vacío',
        },
      },
    },
    mensaje: {
      type: DataTypes.TEXT,
      allowNull: false,
      validate: {
        notEmpty: {
          msg: 'El nombre no puede estar vacío',
        },
      },
    },
  },
  {
    tableName: 'testimoniales',
    timestamps: true,
    underscored: true,
  },
)

export default Testimoniales
