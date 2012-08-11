class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :nombre
      t.string :apellido
      t.string :correo
      t.references :Estado

      t.timestamps
    end
    add_index :doctors, :Estado_id
  end
end
