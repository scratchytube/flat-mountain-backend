class CreateRentals < ActiveRecord::Migration[6.0]
  def change
    create_table :rentals do |t|
      t.integer :price
      t.string :sport
      t.boolean :available
      t.integer :age

      t.timestamps
    end
  end
end
