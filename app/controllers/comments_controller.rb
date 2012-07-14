class CommentsController < ApplicationController
  def create
    @micropost = Micropost.find(params[:micropost_id])
    @comment = Comment.new(params[:comment])
    @comment.micropost = @micropost
   
    if @comment.save
       flash[:success] = "Offer submited!"
       redirect_to :back
    else
      render 'shared/_comment_form'
    end
  end

  def new
    @comment=micropost.comments.new
  end
   
  
end
