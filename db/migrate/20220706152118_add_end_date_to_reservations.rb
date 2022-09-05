class AddEndDateToReservations < ActiveRecord::Migration[6.0]
  def change
    add_column :reservations, :end_date, :string
  end
end
