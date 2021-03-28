import { ErrorRequestHandler } from 'express'
import { ValidationError } from 'yup'
import { MulterError } from 'multer'

interface ValidationErrors {
  [key: string]: string[]
}

const errorHandler: ErrorRequestHandler = (error, req, res, next) => {
  if (error instanceof ValidationError) {
    const errors: ValidationErrors = {}

    error.inner.forEach(err => {
      errors[err.path] = err.errors
    })

    return res.status(400).json({ message: 'Validation fails', errors })
  }

  if (error instanceof MulterError) {
    return res.status(500).json({ error: error.field })
  }

  return res.status(500).json({ info: 'Internal server error', error: error.message })
}

export default errorHandler
