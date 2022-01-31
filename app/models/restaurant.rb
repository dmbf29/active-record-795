class Restaurant < ActiveRecord::Base
  # inheriting allows us to call all of the AR methods
end

# model -> Restaurant
# table -> restaurants

# Active Record is connecting the two
# give us the attributes from the table columns (name address rating)
