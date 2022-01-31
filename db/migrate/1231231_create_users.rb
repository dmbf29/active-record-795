# write ruby code to create the SQL table
# MIGRATION only gets run ONE time
class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name

      t.timestamps # gives :created_at and :updated_at
    end
  end
end

# create a table
# timestamp_create_table_name

# add a column
# timestampe_add_column_name_to_table_name
