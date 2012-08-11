class CreateCitaVacunas < ActiveRecord::Migration
  def change
    create_table :cita_vacunas do |t|
      t.string :nombre_vacuna
      t.string :telefono
      t.string :direccion
      t.date :fecha_registro
      t.references :Cliente
      t.references :Doctor
      t.references :Paciente

      t.timestamps
    end
    add_index :cita_vacunas, :Cliente_id
    add_index :cita_vacunas, :Doctor_id
    add_index :cita_vacunas, :Paciente_id
  end
end
