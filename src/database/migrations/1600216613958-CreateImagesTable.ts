import { MigrationInterface, QueryRunner, Table } from 'typeorm'

export class CreateImagesTable1600216613958 implements MigrationInterface {
  private table = 'images';

  public async up (queryRunner: QueryRunner): Promise<void> {
    await queryRunner.createTable(new Table({
      name: this.table,
      columns: [
        {
          name: 'id',
          type: 'varchar',
          isPrimary: true,
          generationStrategy: 'uuid',
          default: 'uuid()'
        },
        {
          name: 'name',
          type: 'varchar'
        },
        {
          name: 'type',
          type: 'varchar',
          isNullable: true
        },
        {
          name: 'key',
          type: 'varchar'
        },
        {
          name: 'size',
          type: 'double'
        },
        {
          name: 'url',
          type: 'varchar',
          isNullable: true
        },
        {
          name: 'created_at',
          type: 'timestamp',
          default: 'NOW()'
        },
        {
          name: 'updated_at',
          type: 'timestamp',
          default: 'NOW()'
        },
        {
          name: 'deleted_at',
          type: 'timestamp',
          isNullable: true
        }
      ]
    }), true)
  }

  public async down (queryRunner: QueryRunner): Promise<void> {
    await queryRunner.dropTable(this.table)
  }
}
