class PostsController < ApplicationController
  def index
    @posts = Post.all
    @users = User.all
  end

  def create
    post = Post.create(post_params)
    redirect_to '/posts'
  end

  private
  def post_params
    params.require(:post).permit(:title, :content, :user_id)
  end
end
