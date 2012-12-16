class Snippet < ActiveRecord::Base
  attr_accessible :text

  def render
    markdown = Redcarpet::Markdown.new(PygmentizeHTML, extensions={ fenced_code_blocks: true })
    markdown.render(text).html_safe
  end
end
