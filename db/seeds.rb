# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Flat.destroy_all

puts ''
puts 'Creating flats...'

25.times {
  Flat.create!(
    name: Faker::Lorem.sentence(word_count: 3),
    address: Faker::Address.full_address,
    description: Faker::Lorem.paragraph,
    price_per_night: Faker::Number.within(range: 24..200),
    number_of_guests: Faker::Number.within(range: 1..12),
    image_url: "https://source.unsplash.com/random?sig=#{rand(1..100)}")

  puts "Created #{Faker::App.name}"
}
puts ''
puts 'Finished!'
