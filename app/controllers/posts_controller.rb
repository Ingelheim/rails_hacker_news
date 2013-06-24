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
    @post = Post.new(params[:post])
    if @post.save
      redirect_to post_path(@post.id)
    else
      flash[:notice] = "Boo sad sad."
      redirect_to new_post_path
    end
  end
end
