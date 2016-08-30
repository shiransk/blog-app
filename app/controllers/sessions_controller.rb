class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id 
      flash[:success] = "You are Loged in!!!"
      redirect_to '/'
    else
      flash[:danger] = "Unable to login"
      redirect_to '/sessions/login'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:danger] = "You are Loged off"
    redirect_to '/sessions/login'
  end


end
