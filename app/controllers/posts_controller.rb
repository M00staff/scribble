class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
  @post = Post.new(post_params)
  @post.save

  redirect_to posts_path(@post)
  end

  def show
    @posts = Post.find(params[:id])
    @comment = Comment.new
  end

def destroy
  @post = Post.find(params[:id])
  @post.destroy
  redirect_to posts_path
end



  private
  def post_params
    params.require(:post).permit(:author, :post)
  end


end
