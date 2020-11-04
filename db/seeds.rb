# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "DESTROYING RESTAURANTS"
Restaurant.destroy_all

20.times do 
    name = Faker::Restaurant.name

    restaurant = Restaurant.create!(
        name: name,
        address: Faker::Address.full_address,
        phone_number: Faker::PhoneNumber.cell_phone_in_e164,
        category: %w( chinese italian japanese french belgian ).sample )
    
    puts "CREATED #{name}"
    puts "WRITING REVIEW"
    4.times do
      Review.create!(
        rating: rand(0..5),
        content: Faker::Games::Witcher.quote,
        restaurant_id: restaurant.id
      )
    end
end