class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
  end

  def edit
  end

  def show
    @users = User.all
  end

  def create
  end

  def update
  end

  def destroy
  end
end
