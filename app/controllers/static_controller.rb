class StaticController < ApplicationController
  def home
    if session[:reader_id]
      # binding.pry
      @reader = Reader.find_by(id: session[:reader_id])
    end
  end
end
