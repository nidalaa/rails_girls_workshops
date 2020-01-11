class IdeasController < ApplicationController
  def index
    @ideas = current_user.ideas
  end

  # GET /ideas/new
  def new
    @idea = Idea.new
  end


  # POST /ideas
  # POST /ideas.json
  def create
    @idea = Idea.new(idea_params)

    respond_to do |format|
      if @idea.save
        format.html { redirect_to @idea, notice: 'Idea was successfully created.' }
        format.json { render :show, status: :created, location: @idea }
      else
        format.html { render :new }
        format.json { render json: @idea.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @idea = Idea.find(params[:id])

  end

  private

  def idea_params
    params.require(:idea).permit(:name, :description, :picture)
  end
end
