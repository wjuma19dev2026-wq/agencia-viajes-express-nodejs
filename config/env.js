import { fileURLToPath } from 'node:url'
import { dirname, join } from 'node:path'
import { config } from 'dotenv'

// Ruta absoluta al .env de la raíz del proyecto (no depende del cwd)
const __dirname = dirname(fileURLToPath(import.meta.url))

config({
  path: join(__dirname, '..', '.env'),
  quiet: true, // sin banner en consola
})
