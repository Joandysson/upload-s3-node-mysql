import { Env } from '@interfaces/IEnv'
import { params, verifyLabelType } from '@utils/rekognitionUtils'
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
      this.url = this.url ?? `${HOST}:${PORT}/files/${this.filename}`

      const labels = await this.detectImage()
      console.log(labels)
      if (!labels) return

      this.type = await verifyLabelType(labels)
    }

    async detectImage (): Promise<(string | undefined)[] | undefined> {
      const client = new aws.Rekognition()
      return await new Promise((resolve, reject) => {
        client.detectLabels(params((process.env as Env).BUCKET_NAME, this.filename), (err, response) => {
          if (err) return reject(err)
          resolve(response.Labels?.map(label => label.Name))
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
