import { Request, Response } from 'express'
import Image from '@models/Image'
class ImageController {
  async index () {
    const image = new Image()

    return image
  }

  async store (request: Request, response: Response) {
    Image.create({
      name: request.file.originalname,
      type: '',
      key: request.file.filename,
      size: request.file.size,
      url: ''
    }).save()

    response.json('ok')
  }
}

export default new ImageController()
