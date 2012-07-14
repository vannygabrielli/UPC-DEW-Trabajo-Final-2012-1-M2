class CreateHpatients < ActiveRecord::Migration
  def change
    create_table :hpatients do |t|
      t.string :comment
      t.string :picture
      t.string :condition
      t.references :patient

      t.timestamps
    end
    add_index :hpatients, :patient_id
  end
end
