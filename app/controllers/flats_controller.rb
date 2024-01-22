require "open-uri"

class FlatsController < ApplicationController

  def index
    set_flats
  end

  def show
    set_flats
    @flat = @flats.find { |flat| flat["id"] == params["id"].to_i }
  end

  private

  def set_flats
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(URI.open(url).read)
  end
end
