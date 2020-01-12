class CommentsController < ApplicationController

  def index
    @comments = idea.comments
  end

  def new
    @comment = idea.comments.new
  end

  def create
    @comment = idea.comments.new(comment_params)
    if @comment.save
      redirect_to idea_comments_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:user_name, :body)
  end

  def idea
    @idea ||= Idea.find(params[:idea_id])
  end

end
