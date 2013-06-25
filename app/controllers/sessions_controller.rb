class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by_username(params[:username])
    if @user.authenticate(@user)
      session[:user_id] = @user.id
    end
    redirect_to @user
  end

  def destroy
    session[:user_id] = nil
    redirect_to :root
  end
end
