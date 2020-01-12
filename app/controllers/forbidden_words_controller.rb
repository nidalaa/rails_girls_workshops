class ForbiddenWordsController < ApplicationController
  before_action :set_forbidden_word, only: %i[show edit update destroy]

  # GET /forbidden_words
  # GET /forbidden_words.json
  def index
    authorize! :manage, ForbiddenWord
    @forbidden_words = ForbiddenWord.all
  end

  # GET /forbidden_words/new
  def new
    authorize! :manage, ForbiddenWord
    @forbidden_word = ForbiddenWord.new
  end

  # POST /forbidden_words
  # POST /forbidden_words.json
  def create
    authorize! :manage, ForbiddenWord
    @forbidden_word = ForbiddenWord.new(forbidden_word_params)
    if @forbidden_word.save
      redirect_to forbidden_words_url, notice: 'Forbidden word was successfully added.'
    else
      render :new
    end
  end

  # GET /forbidden_words/1/edit
  def edit
    authorize! :manage, ForbiddenWord
  end

  # PATCH/PUT /forbidden_words/1
  # PATCH/PUT /forbidden_words/1.json
  def update
    authorize! :manage, ForbiddenWord
    if @forbidden_word.update(forbidden_word_params)
      redirect_to forbidden_words_url, notice: 'Forbidden word was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /forbidden_words/1
  # DELETE /forbidden_words/1.json
  def destroy
    authorize! :manage, ForbiddenWord
    @forbidden_word.destroy
    redirect_to forbidden_words_url, notice: 'Forbidden word was successfully destroyed.' 
  end

  private

  def set_forbidden_word
    @forbidden_word = ForbiddenWord.find(params[:id])
  end

  def forbidden_word_params
    params.require(:forbidden_word).permit(:word)
  end
end
