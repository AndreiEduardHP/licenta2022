class AddTotalPriceToReservation < ActiveRecord::Migration[6.0]
  def change
    add_column :reservations, :totalprice, :string
  end
end
