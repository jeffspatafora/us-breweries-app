class CreateBreweries < ActiveRecord::Migration[7.0]
  def change
    create_table :breweries do |t|
      t.string :name
      t.string :type
      t.string :address
      t.string :website

      t.timestamps
    end
  end
end
