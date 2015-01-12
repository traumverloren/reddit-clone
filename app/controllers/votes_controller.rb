class VotesController < ApplicationController

  def create
    @vote = current_user.votes.new(vote_params)
    @vote.save
    redirect_to :back
  end

  private

  def vote_params
    params.require(:vote).permit(:up, :user_id, :link_id)
  end

end
