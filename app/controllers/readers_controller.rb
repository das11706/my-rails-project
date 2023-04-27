class ReadersController < ApplicationController

  def show
    @reader = Reader.find(params[:id])
    debugger
  end

  def new
    @reader = Reader.new
  end
end
