class Appointment < ApplicationRecord
    belongs_to :slope
    belongs_to :rental
    belongs_to :user
end
