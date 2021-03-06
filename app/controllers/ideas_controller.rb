class IdeasController < ApplicationController
  before_filter :set_idea, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @ideas = Idea.all
    respond_with(@ideas)
  end

  def show
    respond_with(@idea)
  end

  def new
    @idea = Idea.new
    respond_with(@idea)
  end

  def edit
  end

  def create

    @idea = Idea.new(params[:idea])
    debugger
    @idea.save

    respond_with(@idea)
  end

  def update
    @idea.update_attributes(params[:idea])
    respond_with(@idea)
  end

  def destroy
    @idea.destroy
    respond_with(@idea)
  end

  private
    def set_idea
      @idea = Idea.find(params[:id])
    end
end
