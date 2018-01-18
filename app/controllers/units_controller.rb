class UnitsController < ApplicationController
  helper_method :sort_column, :sort_direction

  def index
    @units = Unit.order(sort_column + " " + sort_direction)
  end

  def new
    @unit = Unit.new
  end

  def show
    @unit = Unit.find(params[:id])
  end

  def create
    Unit.create(unit_params)
      redirect_to units_path
  end

  def update
  end

  def destroy
  end

  def typeahead
    @units = Unit.all
    # @units = filter_from_params @units,:name
  end

  private
  def unit_params
    params.require(:unit).permit(:name, :specialism, :description, :care_burden, :location_id)
  end


  def sort_column
  Unit.column_names.include?(params[:sort]) ? params[:sort] : "id"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
