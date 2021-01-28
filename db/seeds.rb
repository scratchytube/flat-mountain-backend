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
        image: "https://travel.home.sndimg.com/content/dam/images/travel/fullrights/2019/12/4/0/CI_Grant_Gunderson_CMH_Canada_Scary_Ski_Slopes.jpg.rend.hgtvcom.966.644.suffix/1575495169102.jpeg"
    },
    {
        name: "June Mountain",
        altitude: "1480",
        difficulty: "medium",
        image: "https://travel.home.sndimg.com/content/dam/images/travel/fullrights/2019/12/4/0/CI_Kate_Abraham_Squaw_Valley_Scary_Ski_Slopes.jpg.rend.hgtvcom.966.644.suffix/1575495172556.jpeg"
    },
    {
        name: "White Mountain",
        altitude: "1800",
        difficulty: "Very very very hard",
        image: "http://www.skimag.com/wp-content/uploads/sites/13/2018/10/christmas-chute-.jpg"
    },
    {
        name: "Jackson Pole",
        altitude: "1500",
        difficulty: "Incredibly Hard",
        image: "https://10c9rz12yp4b46gr6a2oxgub-wpengine.netdna-ssl.com/wp-content/uploads/JacksonHolecorbets_2-681x1024.jpg"
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