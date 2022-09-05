class AddStartDateToReservations < ActiveRecord::Migration[6.0]
  def change
    add_column :reservations, :start_date, :string
  end
end
