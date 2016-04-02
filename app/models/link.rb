class Link < ActiveRecord::Base
  has_many :votes

  def converted_url
    "http://" + self.URL
  end

  def vote_counter
    votes.count
  end

end
