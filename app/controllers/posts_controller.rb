class PostsController < ApplicationController



  private

  def post_params
    params.require(:posts).permit(:title, :url)
  end


end
