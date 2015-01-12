class PagesController < ApplicationController

  def index
    @links = Link.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 5)
  end

end
