class LocationsController < ApplicationController
  before_action :set_location, only: [:show]

  # GET /locations
  # GET /locations.json
  def index
    @locations = Location.all
  end

  # GET /locations/1
  # GET /locations/1.json
  def show
    @rooms = @location.rooms.all
  end

  def api

    # This come from the search form
    @city = params[:city]
    @state = params[:state]
    @country = params[:country]

    @lat = params[:lat]
    @lon = params[:lon]

    # this comes from HTML5 Geolocation
    if (params[:lat].nil? || params[:lon].nil?)
      @location = [@city, @state, @country].join(', ')
    else
      @location = [@lat, @lon]
    end

    # Build our query
    if (@lon.nil? || @lat.nil?)
      @locations = Location.near(@location)
    else
      @locations = Location.near(@location)
    end

    @centercoords = Geocoder.coordinates(@location)

    # Build our return data
    @data = {
      center: @centercoords,
      location: @location,
      locations: @locations,
      count: @locations.count(:all)
    }

    respond_to do |f|
      f.json { render :json => @data }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location
      @location = Location.find(params[:id])
    end
end
