class ShiftTypesController < ApplicationController
  helper_method :sort_column, :sort_direction

  def index
    @shift_types = ShiftType.order(sort_column + " " + sort_direction)
  end

  def new
    @shift_type = ShiftType.new
  end

  def show
    @shift_type = ShiftType.find(params[:id])
  end

  def create
    ShiftType.create(shift_type_params)
      redirect_to shift_types_path
  end

  def update
  end

  def destroy
  end

  # def typeahead
  #   @shift_types = ShiftType.all
  #   # @units = filter_from_params @units,:name
  # end

  private
  def shift_type_params
    params.require(:shift_type).permit(:name, :description, :start_time, :end_time, :quantity_per_day, :per_location, :per_unit, :location_id)
  end


  def sort_column
  ShiftType.column_names.include?(params[:sort]) ? params[:sort] : "id"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
