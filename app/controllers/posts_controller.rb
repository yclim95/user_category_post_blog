class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new 
    @category = Category.all
  end

  def create
    # ActiveModel::ForbiddenAttributesError(http://api.rubyonrails.org/classes/ActiveModel/ForbiddenAttributesError.html)
    params.permit!
    @post = Post.new(params[:post])
    if @post.save
      redirect_to posts_path, :notice => "You post have been created!"
    else
      render "new", :error => "Invalid Input, Please try again!"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
