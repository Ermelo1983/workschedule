class EmployeesController < ApplicationController
  helper_method :sort_column, :sort_direction

  def index
    @employees = Employee.order(sort_column + " " + sort_direction)
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
  end

  def create
    Employee.create(employee_params)
      redirect_to employees_path
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private
  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :street, :house_number, :zip_or_postal_code, :city, :birth_date, :bank_account, :payscale, :persons_number, :contract_hours, :unit_id)
  end

  def sort_column
  Employee.column_names.include?(params[:sort]) ? params[:sort] : "id"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
