import { Router } from 'express'
import ImageRouters from '@routers/ImageRouters'

const routers = Router()

routers.get('/', (request, response) => {
  return response.status(200).send('Upload images API V1 ✔')
})

routers.use('/image', ImageRouters)

export default routers
