class CreateSlopes < ActiveRecord::Migration[6.0]
  def change
    create_table :slopes do |t|
      t.string :difficulty
      t.string :altitude
      t.string :name
      

      t.timestamps
    end
  end
end
