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

  private
  def unit_params
    params.require(:unit).permit(:name, :specialism, :description, :care_burden)
  end

  def sort_column
  User.column_names.include?(params[:sort]) ? params[:sort] : "id"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
