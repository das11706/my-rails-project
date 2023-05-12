class ReviewsController < ApplicationController

  def index
    if params[:comic_id]
      @reviews = Comic.find(params[:comic_id]).reviews
    # elsif params[:reader_id]
    #   @reviews = Reader.find(params[:reader_id]).reviews
    else
      @reviews = Review.all 
    end
  end
    
  def new
    @review = Review.new  
  end

  def create 
    @review = Review.new(review_params)
    # byebug
    if @review.save
      # byebug
      redirect_to review_path(@review)
    else
      render :new
    end
  end

  
  def show
    @review = Review.find(params[:id])
  end

  # def create
  #   @contributor = Contributor.new(contributor_params)
  #   if @contributor.save
  #     log_in @contributor
  #     flash[:success] = "Welcome to the Comics Contributor App!"
  #     redirect_to @contributor
  #   else
  #     render :new
  #   end
  # end
    
  private

  def review_params
    params.require(:review).permit(:name, :description, :comic_id, :reader_id, comic_ids: [])
  end
end


# def review_params
#   params.require(:review).permit(:name, :description, comic_ids: [] )

# end