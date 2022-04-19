class BreweriesController < ApplicationController
  
  def index
    # breweries = Brewery.all
    breweries = Brewery.near('Alameda, CA')
    render json: breweries.as_json
  end
end
