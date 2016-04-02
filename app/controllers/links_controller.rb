class LinksController < ApplicationController
  def index
    @links = Link.all
    render template: "/links/index.html.erb"
  end

  def new
    @link = Link.new
    # render locals: {
    #   school: School.new
    # }
  end

  def create
    @link = Link.new
    @link.title = params[:link][:title]
    @link.URL = params[:link][:URL]

    if @link.save
      redirect_to link_path(@link.id), notice: "Success!"
    else
      flash[:alert] = "Error Occured! Link couldn't be saved!"
      render :new
    end
  end

  def show
    @link = Link.find(params[:id])
  end

end
