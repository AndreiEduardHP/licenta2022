class AddPlecareToTrips < ActiveRecord::Migration[6.0]
  def change
    add_column :trips, :plecare, :date
  end
end
