class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  private
  def post_params
    params.require(:posts).permit()
  end


end