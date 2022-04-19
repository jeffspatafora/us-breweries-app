# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'csv'

data = CSV.read(Rails.root.join('db', 'breweries_us.csv'))
data.each do |listing|
  p listing[2]
  brewery = Brewery.new(name: listing[0], kind: listing[1], address: listing[2], website: listing[3])
  brewery.save
end

