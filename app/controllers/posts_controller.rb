class PostsController < ApplicationController

  def index 
    @posts = Post.all 
  end

  def new 
    
  end

  def create
    post = Post.new(name: params[:name], post_text: params[:post_text], user_id: params[:user_id])
    if post.save
      cp = Cp.new(post_id: post.id, category_id: params[:category][:category_id])
      cp.save
      flash[:success] = "post has been posted!"
      redirect_to '/'
    else
      flash[:danger] = "post faild!!!"
      redirect_to '/sessions/login'
    end
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def edit 
    @post = Post.find_by(id: params[:id])
  end

  def update
    post = Post.find_by(id: params[:id])
    post.name = params[:name]
    post.post_text = params[:post_text]
    post.user.name = current_user.name
    if post.save
      flash[:success] = "post updated"
      redirect_to "/posts/#{post.id}"
    else
      flash[:danger] = "Problem"
      redirect_to '/posts'
    end
  end

  def destroy
    post = Post.find_by(id: params[:id])
    if post.destroy 
      flash[:danger] = "Post has been Deleted"
      redirect_to '/'
    else
      flash[:success] = "Post wan not Deleted"
    end
  end


end
