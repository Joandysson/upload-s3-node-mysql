import { Router } from 'express'
import ImageController from '@controllers/ImageController'
import multer from 'multer'
import options from 'src/config/multer'

const ImageRouters = Router()

ImageRouters.get('/uploads', ImageController.index)
ImageRouters.post('/upload', multer(options).single('image'), ImageController.store)
ImageRouters.delete('/upload/:id', ImageController.delete)

export default ImageRouters
