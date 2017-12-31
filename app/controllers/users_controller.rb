class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def edit
  end

  def show
    @users = User.all
  end

  def create
    User.create(user_params)
  end

  def update
  end

  def destroy
  end

  private
  def user_params
      params.require(:user).permit(:first_name, :last_name, :role, :department, :floor, :full_time, :email, :password)
    end

end
