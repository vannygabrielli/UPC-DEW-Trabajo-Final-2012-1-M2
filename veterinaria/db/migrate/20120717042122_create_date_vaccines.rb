class CreateDateVaccines < ActiveRecord::Migration
  def change
    create_table :date_vaccines do |t|
      t.string :description
      t.string :phone
      t.string :address
      t.date :registration_date
      t.references :owner

      t.timestamps
    end
    add_index :date_vaccines, :owner_id
  end
end
