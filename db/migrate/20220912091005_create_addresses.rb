class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :name
      t.string :street
      t.string :landmark
      t.string :city, limit: 50
      t.string :state, limit: 50
      t.string :country
      t.integer :pincode
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
