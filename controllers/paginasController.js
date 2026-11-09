import crypto from 'node:crypto'

import { request, response } from 'express'
import { logger } from '../app.js'

//- Models
import Viaje from '../models/Viaje.js'
import Testimoniales from '../models/Testimoniales.js'

//- Interfaces
class CTestimoniales {
  constructor({ nombre, correo, mensaje }) {
    this._id = crypto.randomUUID()
    this.nombre = nombre
    this.correo = correo
    this.mensaje = mensaje
  }
}

export const paginaInicio = async (req, res) => {
  const [viajes, testimoniales] = await Promise.all([
    Viaje.findAll({ limit: 3 }),
    Testimoniales.findAll({ limit: 3 }),
  ])

  try {
    res.render('inicio', {
      pagina: 'Inicio',
      clase: 'home',
      viajes,
      testimoniales,
    })
  } catch (error) {
    logger.error(error.message)
  }
}

export const paginaNosotros = (req, res) => {
  res.render('nosotros', {
    pagina: 'Nosotros',
  })
}

export const paginaViajes = async (req, res) => {
  const viajes = await Viaje.findAll()
  res.render('viajes', {
    pagina: 'Viajes',
    viajes,
  })
}

export const paginaViaje = async (req = request, res = response) => {
  const { slug } = req.params
  const viaje = await Viaje.findOne({ where: { slug } })

  res.render('viaje', {
    pagina: 'viaje',
    viaje,
  })
}

export const paginatestimoniales = async (req, res) => {
  const testimoniales = await Testimoniales.findAll()

  res.render('testimoniales', {
    pagina: 'Testimoniales',
    testimoniales,
  })
}

export const agregarTestimoniales = async (req = request, res = response, next) => {
  const { nombre, correo, mensaje } = req.body

  // Validacion simple
  const errores = []

  if (!nombre || nombre.trim() === '') {
    errores.push({ msg: 'El nombre es obligatorio' })
  }

  if (!correo || correo.trim() === '') {
    errores.push({ msg: 'El correo es obligatorio' })
  } else if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(correo)) {
    errores.push({ msg: 'El correo no es válido' })
  }

  if (!mensaje || mensaje.trim() === '') {
    errores.push({ msg: 'El mensaje es obligatorio' })
  }

  // Si hay errores, renderizamos de nuevo el formulario
  if (errores.length) {
    const testimoniales = await Testimoniales.findAll()
    return res.render('testimoniales', {
      pagina: 'Testimoniales',
      errores,
      nombre,
      correo,
      mensaje,
      testimoniales,
    })
  }

  const testimonial = new CTestimoniales({
    nombre,
    correo,
    mensaje,
  })
  // Aquí puedes guardar el testimonio en la base de datos
  try {
    await Testimoniales.create(testimonial)
    return res.redirect('/testimoniales')
  } catch (err) {
    console.log('Hubo un error al guardar el testimonial en la base de datos:', err)
  }
}
