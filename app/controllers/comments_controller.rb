class CommentsController < ApplicationController

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end


  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.create!(comment_params.merge(post: @post))
    redirect_to post_comment_path(@post, @comment)
  end

  private
  def post_params
    params.require(:post).permit(:author, :comment)
  end

end
