import Image from '@models/Image'

export function renderCreateImage (image: Image| undefined) {
  if (!image) return {}

  return {
    name: image.name,
    type: image.type,
    size: image.size
  }
}
