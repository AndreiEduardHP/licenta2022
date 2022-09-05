class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.string :locatie
      t.text :descriere

      t.timestamps
    end
  end
end
