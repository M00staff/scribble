class CommentsController < ApplicationController

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

def show
  @comment = Comment.all
end

def destroy
  @comment = Comment.find(params[:id])
  @comment.destroy
  redirect_to posts_path
end


  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.create!(post_params.merge(post: @post))
    redirect_to posts_path(@post)
  end

  private
  def post_params
    params.require(:comment).permit(:author, :comment)
  end

end
