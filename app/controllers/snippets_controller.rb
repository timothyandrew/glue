require 'redcarpet'

class SnippetsController < ApplicationController
  authorize_resource

  def new
    @snippet = Snippet.new
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
    @text = snippet.render
  end
end
