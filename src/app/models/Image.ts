import {
  BaseEntity,
  Entity,
  Column,
  CreateDateColumn,
  PrimaryGeneratedColumn,
  UpdateDateColumn,
  DeleteDateColumn
} from 'typeorm'

@Entity('images')
export default class Image extends BaseEntity {
    @PrimaryGeneratedColumn('uuid')
    public id: string;

    @Column({ type: 'varchar' })
    public name: string;

    @Column({ type: 'varchar' })
    public type: string;

    @Column({ type: 'varchar' })
    public key: string;

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
}
