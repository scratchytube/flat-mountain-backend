class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :rental, :slope, :user, :date

end
