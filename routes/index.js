import { Router } from 'express'
import {
  agregarTestimoniales,
  paginaInicio,
  paginaNosotros,
  paginaViaje,
  paginaViajes,
  paginatestimoniales,
} from '../controllers/paginasController.js'
const router = Router()

router.get('/', paginaInicio)

router.get('/nosotros', paginaNosotros)

router.get('/viajes', paginaViajes)
router.get('/viajes/:slug', paginaViaje)

router.get('/testimoniales', paginatestimoniales)
router.post('/testimoniales', agregarTestimoniales)

export default router
