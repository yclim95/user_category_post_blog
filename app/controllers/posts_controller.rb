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
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path, :notice => "You post have been created!"
    else
      render "new", :error => "Invalid Input, Please try again!"
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(post_params) #Update the updated_at & created_at
      redirect_to post_path, :notice => "Your post have been updated!"
    else
      render "edit", :error => "Invalid Input, Please try again!"
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path, :notice => "Your post have been deleted!"
  end

  private
    # Using a private method to encapsulate the permissible parameters is just a good pattern
    # since you'll be able to reuse the same permit list between create and update. Also, you
    # can specialize this method with per-user checking of permissible attributes.
    def post_params
    params.require(:post).permit(:title, :body, :category_id, :user_id)
  end
end
