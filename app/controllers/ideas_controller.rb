class IdeasController < ApplicationController
  def create
  end

  def new
  end

  def index
  end

  def show
    @idea=Idea.find(params[:id])

  end
end
