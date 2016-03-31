class LinksController < ApplicationController
  def index
  @links = Links.all
  render template: "links/index.html.erb"
  end
end
