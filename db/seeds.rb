require 'faker'
require 'bcrypt'

puts 'Detroy the Users!'
User.destroy_all
puts 'Destroy the Slopes!'
Slope.destroy_all
puts 'Destroy the Rentals now!'
Rental.destroy_all
puts 'now kill the appointments'
Appointment.destroy_all

puts 'Creating two users'
bsahota = User.create!(name: "Brian", age: "33", username: "bpsahota", password_digest: BCrypt::Password.create('12345'))
awang = User.create!(name: "Alfred", age: "29", username: "AWang", password_digest: BCrypt::Password.create('12345'))

puts 'Creating damn rentals'
10.times do
    Rental.create!(price: Faker::Number.number(digits: 2), sport: "SnowBoarding", available: Faker::Boolean.boolean, age: Faker::Number.number(digits: 2))
end

puts "lemme get sum slopes"
10.times do 
    Slope.create!(difficulty: "very very difficult", altitude: Faker::Number.number(digits: 6), name: Faker::Mountain.name )
end

puts "Appointments plz"
3.times do
    Appointment.create!(date: Faker::Date.forward(days: 23), rental_id: Rental.all.sample.id, slope_id: Slope.all.sample.id, user_id: User.all.sample.id,  )
end