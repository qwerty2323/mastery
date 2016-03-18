module ApplicationHelper
  def markdown(text)
    options = {
      hard_wrap:   true
    }

    extensions = {
      no_intra_emphasis: true,
      autolink:          true
    }

    renderer = Redcarpet::Render::HTML.new(options)
    markdown = Redcarpet::Markdown.new(renderer, extensions)

    markdown.render(text).html_safe
  end
end
