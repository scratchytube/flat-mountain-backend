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
        sport: "Mens Small Jacket",
        image: "https://ridestore.imgix.net/catalog/product//E/8/E8399_201.JPG?fit=max&q=90&dpr=1&usm=15&auto=format&w=679"
    },
    {
        sport: "Mens Large Jacket",
        image: "https://ridestore.imgix.net/catalog/product//E/8/E8389_100.JPG?fit=max&q=90&dpr=1&usm=15&auto=format&w=679"
    },
    {
        sport: "Womens Small Jacket",
        image: "https://ridestore.imgix.net/catalog/product//E/8/E8467_100.jpg?fit=max&q=70&dpr=1&usm=15&auto=format&w=349"
    },
    {
        sport: "Womens Large Jacket",
        image: "https://ridestore.imgix.net/catalog/product//E/8/E8184_100.jpg?fit=max&q=70&dpr=1&usm=15&auto=format&w=349"
    },
    {
        sport: "Womens Small Pants",
        image: "https://ridestore.imgix.net/catalog/product///e/8/e8381_1_1.jpg?fit=max&q=70&dpr=1&usm=15&auto=format&w=276"
    },
    {
        sport: "Womens Large Pants",
        image: "https://ridestore.imgix.net/catalog/product///e/8/e8380_1_1.jpg?fit=max&q=70&dpr=1&usm=15&auto=format&w=276"
    },
    {
        sport: "Mens Small Pant",
        image: "https://ridestore.imgix.net/catalog/product///e/8/e8357_1_1.jpg?fit=max&q=90&dpr=1&usm=15&auto=format&w=533"
    },
    {
        sport: "Mens Large Pants",
        image: "https://ridestore.imgix.net/catalog/product///e/8/e8528_1_1.jpg?fit=max&q=70&dpr=1&usm=15&auto=format&w=502"
    },
    {
        sport: "Full Kit Womens",
        image: "https://ridestore.imgix.net/catalog/product///e/8/e8515_duplicate_1_100_1.jpg?fit=max&q=70&dpr=1&usm=15&auto=format&w=276"
    },
    {
        sport: "Full Kit Mens",
        image: "https://ridestore.imgix.net/catalog/product///e/8/e8220_duplicate_1_100_1.jpg?fit=max&q=70&dpr=1&usm=15&auto=format&w=276"
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
    },
    {
        name: "Stay Home Slope",
        altitude: "1500",
        difficulty: "Incredibly Hard",
        image: "https://www.snowskool.com/uploads/images/How_to_Snowboard_on_Steeps_and_Steep_Terrain-min.jpg"
    },
    {
        name: "IDK Cliff",
        altitude: "1500",
        difficulty: "Incredibly Hard",
        image: "https://www.skiolympic.com/IMG/jpg/557.jpg"
    },
    {
        name: "SteeperMcSteeperson Cliff",
        altitude: "1500",
        difficulty: "Incredibly Hard",
        image: "https://c.stocksy.com/a/uNM200/z9/562706.jpg"
    },
    {
        name: "Dont Do This Slope",
        altitude: "1500",
        difficulty: "Incredibly Hard",
        image: "https://images.pexels.com/photos/848599/pexels-photo-848599.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
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