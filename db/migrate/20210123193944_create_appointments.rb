class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.date :date
      t.integer :rental_id
      t.integer :slope_id
      t.integer :user_id

      t.timestamps
    end
  end
end
