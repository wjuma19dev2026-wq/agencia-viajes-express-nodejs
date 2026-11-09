import { DataTypes } from 'sequelize'
import db from '../config/db.js'

const ViajeSchema = db.sequelize.define(
  'Viaje',
  {
    titulo: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    precio: {
      type: DataTypes.FLOAT,
      allowNull: false,
    },
    fecha_ida: {
      type: DataTypes.DATEONLY,
      allowNull: false,
    },
    fecha_vuelta: {
      type: DataTypes.DATEONLY,
      allowNull: false,
    },
    imagen: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    descripcion: {
      type: DataTypes.TEXT,
      allowNull: false,
    },
    disponibles: {
      type: DataTypes.INTEGER,
      allowNull: false,
      defaultValue: 1,
    },
    slug: {
      type: DataTypes.STRING,
      allowNull: false,
      unique: true,
    },
  },
  {
    tableName: 'viajes', // 👈 nombre exacto de la tabla en la BD
    timestamps: false, // añade createdAt / updatedAt
    underscored: true, // columnas en snake_case (fecha_salida)
  },
)

export default ViajeSchema
