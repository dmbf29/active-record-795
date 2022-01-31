# Create an instance and save in DB
restaurant = Restaurant.new(name: 'whatever', address: 'whatever')
restaurant.save

# .new + .save
Restaurant.create(name: 'whatever', address: 'whatever')

# Update a value
restaurant.rating = 5
restaurant.save

# Destroy
restaurant.destroy

# Order
Restaurant.order(name: :asc)
Restaurant.order(address: :desc)

# Query Restaurants
Restaurant.all
Restaurant.find(1) # with an id
Restaurant.where(name: 'McDonalds') # with a value (gives an array)
Restaurant.where('name LIKE ?', '%McDonalds%') # with SQL
Restaurant.find_by(name: 'McDonalds')  # (give an instance or nil)
# Restaurant.find_by_name('McDonalds')  # (give an instance or nil)
# Restaurant.find_by_address('Meguro')  # (give an instance or nil)
Restaurant.count # integer
Restaurant.first
Restaurant.last

# controllers
# def index
#   restaurants = Restaurant.all
# end

# def new
#   name = @view.ask_for('name')
#   restaurant = Restaurant.new(name: name)
#   if restaurant.save
#     # redirect to the restaurant html page
#   else
#     # show the form again
#   end
# end
