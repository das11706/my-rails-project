class ReviewsController < ApplicationController
  before_action :logged_in_reader, only: [:show, :edit, :update, :destroy]
 

  def index
    if params[:reader_id]
      @reviews = Reader.find(params[:reader_id]).reviews
    # elsif params[:reader_id]
    #   @reviews = Reader.find(params[:reader_id]).reviews
    else
      @reviews = Review.alphabetically.all 
    end
  end

  def new
    if params[:reader_id] && !Reader.exists?(params[:reader_id])
      redirect_to readers_path, alert: "Reader not found."
    else
      @review = Review.new(reader_id: params[:reader_id]) 
      # byebug
    end

    # if params[:comic_id] && !Comic.exists?(params[:comic_id])
    #   redirect_to comic_path, alert: "Comic not found."
    # else
    #   @review = Review.new(comic_id: params[:comic_id])  
    # end

    # @review = @reader.reviews.build 
    # @comic.reviews.build(name: '')
    # @comic.reviews.build(description: '')
  end

  def show
    @review = Review.find(params[:id])
  end
    
  def create 
    # @review = Review.new(review_params)
    # @review.reader = current_user
    @review = current_user.reviews.build(review_params) 
    # @review = current_user.reviews.build(review_params) -- this is also a way to instantiate a new review object that would be associated to the current user. it would replace lines 30 and 31.

    # if params[:reader_id]
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
      # byebug
      # render :new
      render 'new'
    end
  end

  def edit
    if params[:reader_id]
     reader = Reader.find_by(id: params[:reader_id])
     if reader.nil?
      redirect_to readers_path, alert: "Reader not found."
     else
      @review = reader.reviews.find_by(id: params[:id])
      redirect_to reader_reviews_path(reader), alert: "Review not found." if @review.nil?
     end
    else
      @review = Review.find(params[:id])
    end
    # byebug
  end

  def update
    # @review = Review.find_by(id: params[:id])
    @review = Review.find(params[:id])

    @review.update(review_params)

    if @review.save
      # redirect_to @review
      redirect_to review_path(@review)
    else
      # byebug
      render :edit
    end
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
    params.require(:review).permit(:name, :description, :reader_id, :comic_id, :comic_title, :title, :reader_name,  comic_ids: [])
  end

  def logged_in_reader
    unless logged_in?
      flash[:danger] = "Please log in."
      redirect_to login_path
    end
  end

end


# def review_params
#   params.require(:review).permit(:name, :description, comic_ids: [] )

# end