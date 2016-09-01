class CategoriesController < ApplicationController

  def index
    @categories = Category.all 
  end

  def new
    
  end
    
  def create
    category = Category.new(name: params[:name])
    if category.save 
      flash[:success] = "Category Created"
      redirect_to '/categories/index'
    else
      flashp[:danger] = "Wap Wap Wap"
      redirect_to '/categories/new'
    end
  end

  def show
    @category = Category.find_by(id: params[:id])
  end
  
end
