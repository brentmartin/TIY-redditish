module ApplicationHelper
  def hello_header
  "<h1>Hello!</h1>".html_safe
  end

  # def show_link(converted_URL, URL)
  #   # This is the same as Rail's #link_to
  #   "<a href=#{converted_URL}>#{URL}</a>".html_safe
  # end

end
