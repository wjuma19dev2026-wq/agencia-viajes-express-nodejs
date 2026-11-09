export const formatDate = date => {
  const fecha = new Date(date)
  return new Intl.DateTimeFormat('es-ES', {
    day: '2-digit',
    month: 'short',
    year: 'numeric',
  }).format(fecha)
}
