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
        employee = get_employee(shift_type)
        shift_type.quantity_per_day.times do
          Shift.create(date: date.to_date, month: date.strftime("%B"), shift_type_id: shift_type.id, employee_id: rand(employee[0] .. (employee.count-1)))
        end
      end
    end
    redirect_to shifts_path,  notice:"Successfully created shift for a month"
  end

  def get_employee(shift_type)
    if shift_type.per_location?
      employee = Employee.where(unit_id: Unit.where(location_id: shift_type.location_id)).ids
    elsif shift_type.per_unit?
      unit = Unit.where(location_id: shift_type.location_id)
      employee = Employee.where(unit_id: unit.ids).ids
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
