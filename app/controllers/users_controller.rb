class UsersController < ApplicationController
  def index

  end

  def show
    @user = User.find params[:id]
  end

  def allusers
    @users = User.all
  end
end
