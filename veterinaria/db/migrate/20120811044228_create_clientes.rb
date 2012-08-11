class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nombre_cliente
      t.string :correo_cliente
      t.string :imagen_cliente
      t.string :tel_casa_cliente
      t.string :tel_cel_cliente
      t.references :Prospecto
      t.references :Doctor

      t.timestamps
    end
    add_index :clientes, :Prospecto_id
    add_index :clientes, :Doctor_id
  end
end
