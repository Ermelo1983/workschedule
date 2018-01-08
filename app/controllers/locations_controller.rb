class LocationsController < ApplicationController
  helper_method :sort_column, :sort_direction

  def index
    @locations = Location.order(sort_column + " " + sort_direction)
  end

  def new
  @location = Location.new
  end

  def show
    @location = Location.find(params[:id])
  end

  def create
    Location.create(location_params)
  end

  def update
  end

  def destroy
  end

  private
  def location_params
    params.require(:location).permit(:name, :street, :house_number, :zip__or_postal_code, :city)
  end

  def sort_column
  Location.column_names.include?(params[:sort]) ? params[:sort] : "id"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end

end
