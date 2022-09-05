class AddPriceToTrip < ActiveRecord::Migration[6.0]
  def change
    add_column :trips, :price, :string
  end
end
