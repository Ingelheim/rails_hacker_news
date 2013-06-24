class UsersPostsController < ApplicationController
  def index
    @posts = Post.find_all_by_user_id(params[:user_id])
  end

  def show
    @post = Post.find(params[:id])
  end
end
