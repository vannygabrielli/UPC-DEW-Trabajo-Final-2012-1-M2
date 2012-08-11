class CreatePacientes < ActiveRecord::Migration
  def change
    create_table :pacientes do |t|
      t.string :especie
      t.string :raza
      t.string :genero
      t.string :tipo_sangre
      t.integer :esterilizado
      t.string :tamanio
      t.string :actividad
      t.decimal :peso
      t.date :fec_nacimiento
      t.references :Cliente

      t.timestamps
    end
    add_index :pacientes, :Cliente_id
  end
end
