class ShiftsController < ApplicationController
  helper_method :sort_column, :sort_direction

  def index
    @shifts = Shift.order(sort_column + " " + sort_direction)
  end

  def new
    @shift = Shift.new
  end

  def show
    @shift = Shift.find(params[:id])
  end

  def create
    Shift.create(shift_params)
      redirect_to shifts_path
  end

  def update
  end

  def destroy
  end

  def typeahead
    @shifts = Shift.all
    # @units = filter_from_params @units,:name
  end

  private
  def shift_params
    params.require(:unit).permit(:name, :description, :start_time, :end_time, :quantity_per_day, :for_location, :for_unit)
  end


  def sort_column
  Unit.column_names.include?(params[:sort]) ? params[:sort] : "id"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
