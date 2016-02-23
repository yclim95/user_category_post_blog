class CategoriesController < ApplicationController
  def index
	@categories = Category.all
  end

  def show
	@category = Category.find(params[:id])
	@posts = @category.posts
  end
  
  def create
  end

  def new
  end
  
  def edit
  end

  def update
  end

  def destroy
  end
  
end
