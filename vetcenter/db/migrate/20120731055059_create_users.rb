class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :usuario
      t.string :nombres
      t.string :correo
      t.string :telefono
      t.boolean :tipo

      t.timestamps
    end
  end
end
