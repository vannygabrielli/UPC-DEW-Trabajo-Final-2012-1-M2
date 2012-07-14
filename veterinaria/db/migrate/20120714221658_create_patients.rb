class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :species
      t.string :race
      t.string :gender
      t.string :bloodtype
      t.string :sterilized
      t.string :size
      t.string :activity
      t.float :weight
      t.date :birthday
      t.references :owner

      t.timestamps
    end
    add_index :patients, :owner_id
  end
end
