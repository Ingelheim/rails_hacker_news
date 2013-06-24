class CommentsController < ApplicationController
  def index
    @comments = Comment.find_all_by_post_id(params[:post_id])
  end

  def create
    @comment = Comment.create(params[:comment])
    redirect_to @comments if @comment.save
  end

  def new
    @comment = Comment.new
  end
end
