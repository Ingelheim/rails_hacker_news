class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(params[:post])
    if @post.create
      redirect_to post_path(@post.id)
    else
      flash[:error] = "Boo sad sad."
      redirect_to new_post_path
    end
  end
end
