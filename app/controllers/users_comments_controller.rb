class UsersCommentsController < ApplicationController
  def index
    @comments = Comment.find_all_by_user_id(params[:user_id])
  end

  def show
    @comment = Comment.find(params[:id])
  end
end
