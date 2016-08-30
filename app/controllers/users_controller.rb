class UsersController < ApplicationController 

  def new 

  end

  def create
    user = User.new(name: params[:name], email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation])
    if user.save
      flash[:success] = "User created"
      redirect_to '/sessions/login'
    else
      flash[:danger] = "User not created"
      redirect_to '/sessions/login'
    end
  end


end
  