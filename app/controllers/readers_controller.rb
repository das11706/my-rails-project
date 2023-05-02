class ReadersController < ApplicationController

  def show
    @reader = Reader.find(params[:id])
    # debugger
  end

  def new
    @reader = Reader.new
  end

  def create
    @reader = Reader.new(reader_params)
    if @reader.save
      log_in @reader
      flash[:success] = "Welcome to the Comics Reader App!"
      redirect_to @reader
    else
      render :new
    end
  end

  private

    def reader_params
      params.require(:reader).permit(:name, :email, :password, :password_confirmation)
    end
end
