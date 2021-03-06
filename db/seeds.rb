# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Flat.destroy_all

puts "Creating flats..."

4.times do
  flat = Flat.create(
    name: Faker::Music::Hiphop.artist,
    address: Faker::Address.street_name,
    description: Faker::Marketing.buzzwords,
    price_per_night: [75, 100, 125, 150, 200].sample,
    number_of_guests: [2, 3, 4, 5].sample
    )
  puts "flat #{flat.id} is created"
end

puts "Finished!"
