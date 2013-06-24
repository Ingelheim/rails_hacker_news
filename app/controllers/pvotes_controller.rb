class PvotesController < ApplicationController
  
  def update
    if !session[:"pvote#{params[:post_id]}_#{current_user.id}"]
      @post = Post.find(params[:post_id])
      vote = @post.pvotes.first
      vote.votecount +=1 
      vote.save
      session[:"pvote#{params[:post_id]}_#{current_user.id}"] = true
    end 
    redirect_to @post
  end

end  


