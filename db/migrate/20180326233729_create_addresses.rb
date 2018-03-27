class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :name
      t.string :address
      t.float :lat
      t.float :lng
      t.references :user_id, index: true

      t.timestamps
    end
  end
end
