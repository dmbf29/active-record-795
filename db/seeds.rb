# This is where you can create initial data for your app.
require 'faker'
Restaurant.destroy_all

# restaurant = Restaurant.new(name: 'Land', address: 'Meguro', rating: rand(1..5))
# restaurant.save

# restaurant = Restaurant.new(name: 'Mos Burger', address: 'Meguro', rating: rand(1..5))
# restaurant.save

# restaurant = Restaurant.new(name: 'Butcher Shop', address: 'Meguro', rating: rand(1..5))
# restaurant.save

puts "Creating restaurants...."
20.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    rating: rand(0..5)
  )
  restaurant.save
end
puts "... #{Restaurant.count} restaurants created."
