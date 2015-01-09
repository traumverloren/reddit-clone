class LinksController < ApplicationController

  def index
    @links = Link.all
  end

  def show
    @link = Link.find(params[:id])
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.new(link_params)
    if @link.save
      redirect_to links_path, notice: "Link '#{@link.title}' successfully created!"
    else
      flash[:alert] = "Link not saved!  Please check for errors!"
      render 'new'
    end
  end

  private

  def link_params
    params.require(:link).permit(:title, :url)
  end
end
