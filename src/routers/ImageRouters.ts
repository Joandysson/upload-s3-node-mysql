import { Router } from 'express'
import ImageController from '@controllers/ImageController'
import multer from 'multer'
import options from 'src/config/multer'

const ImageRouters = Router()

ImageRouters.post('/upload', multer(options).single('image'), ImageController.store)

export default ImageRouters
