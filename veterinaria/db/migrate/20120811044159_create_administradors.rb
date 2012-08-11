class CreateAdministradors < ActiveRecord::Migration
  def change
    create_table :administradors do |t|
      t.string :nombre
      t.string :apellido
      t.string :correo
      t.references :Estado

      t.timestamps
    end
    add_index :administradors, :Estado_id
  end
end
