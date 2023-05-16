class ReadersController < ApplicationController

  def index
    @readers = Reader.all
  end

  def new
    @reader = Reader.new
    @reader.reviews.build(name: '')
    @reader.reviews.build(description: '')
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

  private

    def reader_params
      params.require(:reader).permit(:name, :email, :password, :password_confirmation, comic_ids:[], comics_attributes: [:title, :description], reviews_attributes: [:name, :description])
    end
end
