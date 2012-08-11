class CreateProspectos < ActiveRecord::Migration
  def change
    create_table :prospectos do |t|
      t.string :nombre_prospecto
      t.string :correo_prospecto
      t.string :imagen_prospecto
      t.string :tel_casa_prospecto
      t.string :tel_cel_prospecto
      t.references :Doctor

      t.timestamps
    end
    add_index :prospectos, :Doctor_id
  end
end
