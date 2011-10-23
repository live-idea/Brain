class CommentsController < ApplicationController
  before_filter :get_step
  def index
    @comments = Comment.all
     respond_to do |format|
      format.html # index.html.erb
   end

  end
  
 def create
    @comment = Comment.create!(params[:comment])
    flash[:notice] = "Thanks for commenting!"
    respond_to do |format|
    #  format.html { redirect_to step_comments_path(@step) }
      format.js
    end
  end

  def destroy
     @comment = Comment.find(params[:id])
     @comment.destroy
     respond_to do |format|
    #   format.html { redirect_to comments_path }
       format.js
     end
   end
   
  def get_step
    
  end
end
