class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :rental_id, :slope_id, :user_id, :date
end
