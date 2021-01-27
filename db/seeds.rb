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
bsahota = User.create!(name: "Brian", age: 33, username: "bpsahota", password_digest: BCrypt::Password.create('12345'))
awang = User.create!(name: "Alfred", age: 29, username: "AWang", password_digest: BCrypt::Password.create('12345'))

puts 'Creating damn rentals'
# 10.times do
#     Rental.create!(price: Faker::Number.number(digits: 2), sport: "SnowBoarding", available: Faker::Boolean.boolean, age: Faker::Number.number(digits: 2))
# end

rentals = [
    {
        sport: "Mens Small Snowboarding",
        available: true,
        image: "https://ridestore.imgix.net/catalog/product//E/8/E8399_201.JPG?fit=max&q=90&dpr=1&usm=15&auto=format&w=679"
    },
    {
        sport: "Mens Large Snowboarding",
        available: true,
        image: "https://ridestore.imgix.net/catalog/product//E/8/E8389_100.JPG?fit=max&q=90&dpr=1&usm=15&auto=format&w=679"
    },
    {
        sport: "Womens small Snowboarding",
        available: true,
        image: "https://ridestore.imgix.net/catalog/product//E/8/E8467_100.jpg?fit=max&q=70&dpr=1&usm=15&auto=format&w=349"
    },
    {
        sport: "Womens Large Snowboarding",
        available: true,
        image: "https://ridestore.imgix.net/catalog/product//E/8/E8184_100.jpg?fit=max&q=70&dpr=1&usm=15&auto=format&w=349"
    }
    
]
puts 'Creating damn rentals'
rentals.each do |rental_hash|
    Rental.create!(rental_hash)
    end




slopes = [
    {
        name: "Flat Mountain",
        altitude: "1600",
        difficulty: "medium",
        image: "https://www.snowbasin.com/images/uploads/gallery/Snowbasin_2020-21_Winter_Trail_Map.jpg"
    },
    {
        name: "June Mountain",
        altitude: "1480",
        difficulty: "medium",
        image: "https://res.cloudinary.com/liftopia/image/upload/c_fit,d_defaults:default_logo_1.png,f_auto,h_980,q_auto,w_980/v1/production/trail_maps/1e780bf8bae3edaa45d94bd48b38b0f2.jpg"
    },
    {
        name: "White Mountain",
        altitude: "1800",
        difficulty: "Very very very hard",
        image: "https://whiteface.com/wp-content/uploads/sites/3/2020/09/WFmap-with-Chevy.jpg"
    },
    {
        name: "Jackson Hole",
        altitude: "1500",
        difficulty: "Easy Peasy",
        image: "https://www.jacksonhole.com/images/maps/2056-WinterTrailMap.FINAL2020.21.jpg"
    }
    
]
puts "make me slopies"
slopes.each do |slope_hash|
    Slope.create!(slope_hash)
    end

    puts "Appointments plz"
3.times do
    Appointment.create!(confirm: false, date: Faker::Date.forward(days: 23), rental_id: Rental.all.sample.id, slope_id: Slope.all.sample.id, user_id: User.all.sample.id)
end