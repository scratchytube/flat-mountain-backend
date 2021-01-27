class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.date :date
      t.boolean :confirm
      t.belongs_to :user
      t.belongs_to :rental
      t.belongs_to :slope
      

      t.timestamps
    end
  end
end

# create_table :appointments do |t|
#   t.date :date
#   t.integer :rental_id
#   t.integer :slope_id
#   t.integer :user_id
