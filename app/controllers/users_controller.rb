class UsersController < ApplicationController
  # Show a particular User's page
  #
  def show
    @user = User.find(params[:id])
  end

  # User list
  #
  def index
    @users = User.all
  end
end
