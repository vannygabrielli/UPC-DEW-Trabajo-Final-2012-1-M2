class CreateImagenDoctorPacientes < ActiveRecord::Migration
  def change
    create_table :imagen_doctor_pacientes do |t|
      t.string :imagen
      t.references :DoctorPaciente

      t.timestamps
    end
    add_index :imagen_doctor_pacientes, :DoctorPaciente_id
  end
end
