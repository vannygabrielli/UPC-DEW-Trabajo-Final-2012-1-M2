class CreateDoctorClientes < ActiveRecord::Migration
  def change
    create_table :doctor_clientes do |t|
      t.text :nota_cliente
      t.date :fecha_doctorcliente
      t.references :Cliente
      t.references :Doctor

      t.timestamps
    end
    add_index :doctor_clientes, :Cliente_id
    add_index :doctor_clientes, :Doctor_id
  end
end
