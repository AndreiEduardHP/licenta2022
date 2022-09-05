class AddSosireToTrips < ActiveRecord::Migration[6.0]
  def change
    add_column :trips, :sosire, :date
  end
end
