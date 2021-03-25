import Image from '@models/Image'
import * as Yup from 'yup'

export async function validStore (image: Image) {
  const schema = Yup.object().shape({})

  await schema.validate(image, {
    abortEarly: false
  })
}

export async function validUpdate (image: Image) {
  const schema = Yup.object().shape({
    avatar: Yup.string()
  })

  await schema.validate(image, {
    abortEarly: false
  })
}
