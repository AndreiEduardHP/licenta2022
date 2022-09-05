class AddNrZileToReservation < ActiveRecord::Migration[6.0]
  def change
    add_column :reservations, :nrzile, :string
  end
end
