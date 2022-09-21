class CreateLogIns < ActiveRecord::Migration[7.0]
  def change
    create_table :log_ins do |t|
      t.string :user
      t.string :city
      t.string :state
      t.integer :order

      t.timestamps
    end
  end
end
