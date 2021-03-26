import Image from '@models/Image'

export function renderImage (image: Image) : Image {
  const { id, name, type, filename, size, url, createdAt, updatedAt } = image

  return {
    id,
    name,
    type,
    filename,
    size,
    url,
    createdAt,
    updatedAt
  } as Image
}

export function renderListImage (image: Image[]) : Image[] {
  return image.map(image => renderImage(image))
}
