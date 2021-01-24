class RentalSerializer < ActiveModel::Serializer
  attributes :id, :price, :sport, :available, :age
end
