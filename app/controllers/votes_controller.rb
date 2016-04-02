class VotesController < ApplicationController
  def create
    @vote = Vote.new
    @vote.link_id = params[:link_id]
    @vote.save
    redirect_to :back
  end

end
