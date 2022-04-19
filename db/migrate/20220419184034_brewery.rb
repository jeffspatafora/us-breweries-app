class Brewery < ActiveRecord::Migration[7.0]
  def change
    rename_column :breweries, :type, :kind
  end
end
