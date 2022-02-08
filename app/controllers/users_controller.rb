class UsersController < ApplicationController

  skip_before_action :authorized, only: [:new, :create]

  def new
    @user = User.new
  end

  def self.create
    @user = User.create(user_params)
    sessions[:user_id] = @user.id
    redirect_to '/login'
  end

  private
  def user_params
    params.require(:user).permit(:username, :password)
  end
end
