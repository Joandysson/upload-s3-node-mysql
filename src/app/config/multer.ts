import dotenv from 'dotenv'
import multer, { Options } from 'multer'
import path from 'path'
// import crypto from 'crypto'
// import aws from 'aws-sdk'
// import multerS3 from 'multer-s3'
import { Env } from '@interfaces/IEnv'
dotenv.config()
interface File extends Express.Multer.File {
  key: string
}

const {
  STORAGE_TYPE
  // BUCKET_NAME
} = process.env as Env

const storageTypes: {[key: string]: multer.StorageEngine} = {
  local: multer.diskStorage({
    destination: (req, file, cb) => {
      cb(null, path.resolve(__dirname, '..', '..', 'tmp', 'uploads'))
    },
    filename: (req, file: File, cb) => {
      file.key = `${Date.now()}-${file.originalname}`
      cb(null, file.key)
    }
  })
  // s3: multerS3({
  //   s3: new aws.S3(),
  //   bucket: BUCKET_NAME,
  //   contentType: multerS3.AUTO_CONTENT_TYPE,
  //   acl: "public-read",
  //   key: (req, file, cb) => {
  //     crypto.randomBytes(16, (err, hash) => {
  //       if (err) cb(err);

  //       const fileName = `${hash.toString("hex")}-${file.originalname}`;

  //       cb(null, fileName);
  //     });
  //   }
  // })
}

const options: Options = {
  dest: path.resolve(__dirname, '..', '..', 'tmp', 'uploads'),
  storage: storageTypes[STORAGE_TYPE],
  limits: {
    fileSize: 2 * 1024 * 1024
  },
  fileFilter: (req, file, cb) => {
    const allowedMimes = [
      'image/jpeg',
      'image/pjpeg',
      'image/png',
      'image/gif',
      'image/jpg'
    ]

    if (allowedMimes.includes(file.mimetype)) {
      cb(null, true)
    } else {
      cb(new Error('Invalid file type.'))
    }
  }
}

export default options
