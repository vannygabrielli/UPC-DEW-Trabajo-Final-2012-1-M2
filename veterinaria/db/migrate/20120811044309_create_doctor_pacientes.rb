class CreateDoctorPacientes < ActiveRecord::Migration
  def change
    create_table :doctor_pacientes do |t|
      t.text :nota_paciente
      t.date :fecha_doctorpaciente
      t.text :condiciones
      t.references :Cliente
      t.references :Doctor

      t.timestamps
    end
    add_index :doctor_pacientes, :Cliente_id
    add_index :doctor_pacientes, :Doctor_id
  end
end
