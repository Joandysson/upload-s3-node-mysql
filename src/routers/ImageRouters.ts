import { Router } from 'express'
import ImageController from '@controllers/ImageController'
import multer from 'multer'
import options from '@config/multer'

const ImageRouters = Router()

ImageRouters.post('/update', multer(options).single('avatar'), ImageController.store)

export default ImageRouters
