class ShiftsController < ApplicationController
  helper_method :sort_column, :sort_direction


  def index
    @days = DateTime.now.beginning_of_month .. DateTime.now.end_of_month
    @shift_types = ShiftType.all
    @shifts = Shift.order(sort_column + " " + sort_direction)

  end

  def show
  end

  def new
  end

  def create
    # days = DateTime.now.beginning_of_month .. DateTime.now.end_of_month
    # days.each do |date|
    # date.to_date, @shift.each do    end
  end

  def update
  end

  def edit
  end

  def create_this_month_shift
    days = (DateTime.now + 1.month).beginning_of_month .. (DateTime.now + 1.month).end_of_month
    shift_types = ShiftType.all
    #this has to be something like Location.shifts.all and/or Unit.shifts.all although i think this is covered in the first
    days.each do |date|
      shift_types.each do |shift_type|
        employee = get_location_or_unit(shift_type, employee)
        shift_type.quantity_per_day.times do
          Shift.create(date: date.to_date, month: date.strftime("%B"), shift_type_id: shift_type.id, employee_id: employee)
          employee.made_hours +1
        end
      end
    end
    redirect_to shifts_path,  notice:"Successfully created shift for a month"
  end

  def get_location_or_unit(shift_type, employee)
    if shift_type.per_location?
      employee = get_employee(shift_type, employee)
    elsif shift_type.per_unit?
      unit = Unit.where(location_id: shift_type.location_id)
      employee = Employee.where(unit_id: unit.ids).ids
    end
  end

  def get_employee(shift_type, employee)
    employees = Employee.where(unit_id: Unit.where(location_id: shift_type.location_id))
    employees.each do |employee|
      given_hours = employee.contract_hours
      made_hours = 0
      # made_hours + (shift.end_time - shift.start_time)
      # if made_hours == given_hours || made_hours => given_hours current employee cant be given to create_this_month_shift
    end
  end



  def destroy
  end

  private

  def sort_column
    Shift.column_names.include?(params[:sort]) ? params[:sort] : "id"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end

end
