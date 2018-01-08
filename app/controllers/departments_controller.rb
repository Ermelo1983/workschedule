class DepartmentsController < ApplicationController
  helper_method :sort_column, :sort_direction

  def index
    @departments = Department.order(sort_column + " " + sort_direction)
  end

  def new
  @department = Department.new
  end

  def show
    @department = Department.find(params[:id])
  end

  def create
    Department.create(department_params)
  end

  def update
  end

  def destroy
  end

  private
  def department_params
    params.require(:department).permit(:name, :street, :house_number, :zip__or_postal_code, :city)
  end

  def sort_column
  Department.column_names.include?(params[:sort]) ? params[:sort] : "id"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end

end
