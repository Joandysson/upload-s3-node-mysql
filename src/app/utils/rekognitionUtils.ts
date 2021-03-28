export function landscape () : string[] {
  return [
    'Nature', 'Landscape', 'City', 'Urban', 'Building', 'Town',
    'Panoramic', 'High Rise', 'Scenery', 'Mountain', 'Tree', 'Plant',
    'Outdoors', 'Water', 'Lake', 'Sculpture', 'Statue', 'Downtown',
    'Vegetation', 'Woodland', 'Weather', 'Peak', 'Tent',
    'Camping', 'Watercraft', 'Transportation', 'Vessel'
  ]
}

export function human (): string[] {
  return [
    'Female', 'Man', 'Face', 'Person', 'Human'
  ]
}

export function animal () : string[] {
  return ['Mammal', 'Wildlife', 'Animal', 'Pet']
}

export function object (): string[] {
  return [
    'Chair', 'Furniture', 'Wood', 'Plywood', 'Camera',
    'Electronics', 'Wristwatch', 'Cup', 'Joystick', 'Electric Fan',
    'Mobile Phone', 'Cell Phone', 'Phone', 'Couch', 'Ottoman'
  ]
}

export function params (Bucket: string, Name: string) {
  return {
    Image: {
      S3Object: {
        Bucket: Bucket,
        Name: Name
      }
    },
    MaxLabels: 5,
    MinConfidence: 75
  }
}

export async function verifyLabelType (labels: (string | undefined)[]): Promise<string> {
  let type
  for await (const label of labels) {
    if (label === undefined) continue

    if (landscape().includes(label)) {
      type = 'Paisagem'
      break
    }
    if (human().includes(label)) {
      type = 'Pessoa'
      break
    }
    if (animal().includes(label)) {
      type = 'Animal'
      break
    }
    if (object().includes(label)) {
      type = 'Objeto'
      break
    }
  }

  return type ?? 'Desconhecido'
}
