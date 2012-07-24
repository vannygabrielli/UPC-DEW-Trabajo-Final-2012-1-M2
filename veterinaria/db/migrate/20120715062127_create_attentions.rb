class CreateAttentions < ActiveRecord::Migration
  def change
    create_table :attentions do |t|
      t.integer :id
      t.string :medical_notes
      t.string :medical_images
      t.string :special_conditions
      t.references :users
      t.references :owners
      t.references :patients

      t.timestamps
    end
    add_index :attentions, :users_id
    add_index :attentions, :owners_id
    add_index :attentions, :patients_id
  end
end
