module ApplicationHelper
  def markdown(text)
    options = [:no_intra_emphasis, :autolink]
    Redcarpet.new(text, *options).to_html.html_safe
  end
end
