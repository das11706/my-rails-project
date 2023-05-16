class ComicsController < ApplicationController

  def index
    @comics = Comic.alphabetically.all
  end

  def new
    @comic = Comic.new 
    @comic.reviews.build(name: '')
    @comic.reviews.build(description: '')
  end


  def create
    @comic = Comic.new(comic_params)
    if @comic.save
      redirect_to @comic
    else
      # byebug
      render :new
    end
  end

  def show
    @comic = Comic.find(params[:id])
  end

  private
    def comic_params
      params.require(:comic).permit(:title, :description, reviews_attributes: [:name, :description])
    end
    
end
