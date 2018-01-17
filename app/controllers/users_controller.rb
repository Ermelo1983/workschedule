class UsersController < ApplicationController
  helper_method :sort_column, :sort_direction


  def index
    @users = User.order(sort_column + " " + sort_direction)
  end

  def new
    @user = User.new
  end

  def edit
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    User.create(user_params)
    redirect_to users_path
  end

  def update
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :role, :department, :floor, :full_time, :email, :password)
  end

  def sort_column
  User.column_names.include?(params[:sort]) ? params[:sort] : "id"
end

def sort_direction
  %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
end

end
