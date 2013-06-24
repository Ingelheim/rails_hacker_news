class CommentsController < ApplicationController
  def index
    @comments = Comment.find_all_by_post_id(params[:post_id])
  end

  def create
    @comment = Comment.new(params[:comment])
    if @comment.save
      redirect_to comments_path 
    else
      flash[:notice] = "Boo sad comment."
      redirect_to comments_path
    end
  end

  def new
    @comment = Comment.new
  end
end
