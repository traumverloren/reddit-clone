class CommentsController < ApplicationController
  before_filter :authenticate_user!

  def new
    @comment = Comment.new
  end

  def create
    @comment = current_user.comments.new(comment_params)
    if @comment.save
      redirect_to :back, notice: "Comment added!"
    else
      redirect_to :back, alert: "Comment not saved!  Please check for errors!"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:message, :user_id, :link_id)
  end

end
