class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :housephone
      t.string :mobilephone
      t.string :address
      t.string :photo
      t.references :profile

      t.timestamps
    end
    add_index :users, :profile_id
  end
end
