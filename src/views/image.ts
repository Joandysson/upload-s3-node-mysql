import Image from '@models/Image'

export function renderCreateImage (image: Image| undefined) {
  if (!image) return {}

  return {
    name: image.name,
    email: image.type,
    phone: image.avatar
  }
}
