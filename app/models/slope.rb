class Slope < ApplicationRecord
    has_many :appointments 
    has_many :users, through: :appointments
    has_many :rentals, through: :appointments
end
