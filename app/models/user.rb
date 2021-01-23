class User < ApplicationRecord
    has_many :appointments 
    has_many :rentals, through: :appointments
    has_many :slopes, through: :appointments
end
