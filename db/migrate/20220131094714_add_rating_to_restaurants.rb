class AddRatingToRestaurants < ActiveRecord::Migration[6.0]
  def change
    # add_column :table_name, :column_name, :data_type, (opt) default: value
    add_column :restaurants, :rating, :integer, default: 0, null: false
  end
end
