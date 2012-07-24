class CreateProspectus < ActiveRecord::Migration
  def change
    create_table :prospectus do |t|
      t.string :Name
      t.string :Email
      t.string :Address
      t.string :Photo
      t.string :Phone
      t.string :Mobilephone

      t.timestamps
    end
  end
end
