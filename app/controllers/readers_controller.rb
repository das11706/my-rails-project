class ReadersController < ApplicationController
  before_action :logged_in_reader, only: [:edit, :update]
 

  def index
    @readers = Reader.all
  end

  def new
    @reader = Reader.new
    # @review = Review.new  

    # @reader.reviews.build(name: '')
    # @reader.reviews.build(description: '')
  end

  def show
    @reader = Reader.find(params[:id])
    # debugger
  end

  def create
    @reader = Reader.new(reader_params)
    # byebug
    if @reader.save
      log_in @reader
      flash[:success] = "Welcome to the Comics Reader App!"
      redirect_to @reader
    else
      render :new
    end
  end

  def edit
    @reader = Reader.find(params[:id])
  end

  def update
    @reader = Reader.find_by(id: params[:id])
    @reader.update(reader_params)

    if @reader.save
      flash[:success] = "Reader updated"
      redirect_to @reader
    else
      render :edit
    end
  end

    # returns the reader who has left the most reviews
  def mostreviews
    @reader = Review.most_reviews
  end


  private

    def reader_params
      params.require(:reader).permit(:name, :email, :password, :password_confirmation, comic_ids:[], comics_attributes: [:title, :description], reviews_attributes: [:name, :description])
    end

    def logged_in_reader
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_path
      end
    end

    
end
