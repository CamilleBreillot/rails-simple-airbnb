# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating 5 fake flats...'
5.times do
  flat = Flat.new(
    name: ["Urban flat", "Light and spacious flat", "Sunny flat with big balcony", "Stylish house near Eiffel Tower", "Cosy flat in Montmartre"].sample,
    address: Faker::Address.full_address,
    description: Faker::Lorem.paragraph,
    price_per_night: [100, 80, 75, 40, 35, 65, 95].sample,
    number_of_guests: [2, 4, 5, 6, 2, 2, 3].sample,
    image_url: "https://images.unsplash.com/photo-1570129477492-45c003edd2be?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80"
  )
  flat.save!
end
puts 'Finished!'
