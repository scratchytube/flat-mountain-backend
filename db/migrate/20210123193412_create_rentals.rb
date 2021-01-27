class CreateRentals < ActiveRecord::Migration[6.0]
  def change
    create_table :rentals do |t|
      
      t.string :sport
      t.boolean :available
      t.string :image

      t.timestamps
    end
  end
end
