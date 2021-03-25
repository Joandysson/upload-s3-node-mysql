import { Request, Response } from 'express'
import Image from '@models/Image'
class ImageController {
  async index () {
    const image = new Image()

    return image
  }

  async store (request: Request, response: Response) {

  }
}

export default new ImageController()
