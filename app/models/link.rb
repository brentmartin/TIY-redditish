class Link < ActiveRecord::Base
  has_one :vote



  def converted_url
    "http://" + self.URL
  end

end
