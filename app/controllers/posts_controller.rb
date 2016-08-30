class PostsController < ApplicationController

  def new 

  end

  def create
    post = Post.new(name: params[:name], post_text: params[:post_text], user_id: params[:user_id])
    if post.save
      redirect_to '/'
    else
      redirect_to '/sessions/login'
    end
  end

  def edit 

  end

  def update
    
  end





end
