class ReadersController < ApplicationController

  def show
    @reader = Reader.find(params[:id])
  end

  def new
  end
end
