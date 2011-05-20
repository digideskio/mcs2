class UsersController < ApplicationController
  before_filter :authenticate_user!, :only => [:index]
  load_and_authorize_resource

  # Show a particular User's page
  #
  def show
    @user = User.find(params[:id])
  end

  # User list
  #
  def index
    @users = User.paginate(:page => params[:page])
  end
end
