class LinksController < ApplicationController
  before_filter :authenticate_user!, only: [:create]

  def index
    @links = Link.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 5)
  end

  def new
    @link = Link.new
  end

  def create
    @link = current_user.links.new(link_params)
    if @link.save
      redirect_to links_path, notice: "Link '#{@link.title}' successfully created!"
    else
      flash[:alert] = "Link not saved!  Please check for errors!"
      render 'new'
    end
  end

  def show
    @link = Link.find(params[:id])
    @comment = Comment.new
  end

  private

  def link_params
    params.require(:link).permit(:title, :url, :user_id)
  end

end
