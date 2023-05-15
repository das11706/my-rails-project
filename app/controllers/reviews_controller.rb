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
    # @comic.reviews.build(name: '')
    # @comic.reviews.build(description: '')
  end

  def create 
    @review = Review.new(review_params)
    # if params[:comic_id]
    #   @review = Review.find_or_create_by(review_params)
    #   @review.save
      
    # end
    # @comic.reviews.build(review_params)
    # byebug
    if @review.save
      # byebug
      # redirect_to review_path(@review)
      redirect_to @review
    else
      byebug
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
    params.require(:review).permit(:name, :description, :comic_title, :reader_name, :comic_id,  comic_ids: [])
  end
end


# def review_params
#   params.require(:review).permit(:name, :description, comic_ids: [] )

# end