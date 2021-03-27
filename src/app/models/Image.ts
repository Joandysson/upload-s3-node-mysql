import { Env } from '@interfaces/IEnv'
import {
  BaseEntity,
  Entity,
  Column,
  CreateDateColumn,
  PrimaryGeneratedColumn,
  UpdateDateColumn,
  DeleteDateColumn,
  BeforeInsert,
  BeforeRemove
} from 'typeorm'
import aws from 'aws-sdk'
import path from 'path'
import { promisify } from 'util'
import fs from 'fs'

@Entity('images')
export default class Image extends BaseEntity {
    @PrimaryGeneratedColumn('uuid')
    public id: string;

    @Column({ type: 'varchar' })
    public name: string;

    @Column({ type: 'varchar' })
    public type?: string;

    @Column({ type: 'varchar' })
    public filename: string;

    @Column({ type: 'double' })
    public size: number;

    @Column({ type: 'varchar' })
    public url?: string;

    @CreateDateColumn({ name: 'created_at' })
    public createdAt: Date;

    @UpdateDateColumn({ name: 'updated_at' })
    public updatedAt: Date;

    @DeleteDateColumn({ name: 'deleted_at' })
    public deletedAt: Date;

    @BeforeInsert()
    async verifyUrl () {
      const { HOST, PORT } = process.env as Env
      this.url = this.url ? this.url : `${HOST}:${PORT}/files/${this.filename}`

      await this.typeImage()
    }

    async typeImage () {
      const client = new aws.Rekognition()

      const params = {
        Image: {
          S3Object: {
            Bucket: (process.env as Env).BUCKET_NAME,
            Name: this.filename
          }
        },
        MaxLabels: 1
      }

      await new Promise(resolve => {
        client.detectLabels(params, (err, response) => {
          if (err) {
            console.log(err, err.stack)
          } else {
            console.log(`Detected labels for: ${this.filename}`)
            const imageInfo = response.Labels?.map(label => {
              this.type = label.Name
              return {
                Label: label.Name,
                Confidence: label.Confidence
              }
            })

            resolve(imageInfo)
          }
        })
      })
    }

    @BeforeRemove()
    async removeS3 () {
      const { STORAGE_TYPE, BUCKET_NAME } = process.env as Env
      const s3 = new aws.S3()

      if (STORAGE_TYPE === 's3') {
        return s3.deleteObject({
          Bucket: BUCKET_NAME,
          Key: this.filename
        }).promise()
      }

      return promisify(fs.unlink)(path.resolve(__dirname, '..', '..', 'tmp', 'uploads', this.filename))
    }
}
