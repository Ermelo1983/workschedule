class SchedulesController < ApplicationController
  def index
    @days = DateTime.now.beginning_of_month .. DateTime.now.end_of_month
    @shifts = Shift.all
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

  def create_this_month_schedule
    days = (DateTime.now + 4.month).beginning_of_month .. (DateTime.now + 4.month).end_of_month
    shifts = Shift.all
    #this has to be something like Location.shifts.all and/or Unit.shifts.all although i think this is covered in the first
    days.each do |date|
      shifts.each do |shift|
        shift.quantity_per_day.times do
          Schedule.create(datetime: date.to_date, month: date.strftime("%B"), shift_id: shift.id)
        end
      end
    end
    redirect_to schedules_path,  notice:"Successfully created schedule for a month"


  end

  def destroy
  end

end
