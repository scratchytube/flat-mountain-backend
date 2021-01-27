class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :rental, :slope, :user, :date, :confirm

end
