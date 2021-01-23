class Rental < ApplicationRecord
    has_many :appointments 
    has_many :users, through: :appointments
    has_many :slopes, through: :appointments
end
