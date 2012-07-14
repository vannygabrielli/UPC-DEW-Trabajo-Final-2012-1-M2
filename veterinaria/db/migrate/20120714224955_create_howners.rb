class CreateHowners < ActiveRecord::Migration
  def change
    create_table :howners do |t|
      t.string :comment
      t.references :owner

      t.timestamps
    end
    add_index :howners, :owner_id
  end
end
