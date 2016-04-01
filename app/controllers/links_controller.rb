class LinksController < ApplicationController
  def index
    @links = Link.all
    render template: "/links/index.html.erb"
  end

  def show
  end
end
