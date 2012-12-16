class SnippetsController < ApplicationController
  def new
    @snippet = Snippet.new
    p @snippet
  end

  def create
    snippet = Snippet.create(params[:snippet])
    if snippet
      redirect_to snippet_path(snippet)
    else
      render :new
    end
  end

  def show
    snippet = Snippet.find_by_id(params[:id])
    @text = snippet.text
  end
end
