class StaticController < ApplicationController
  def home
    if session[:reader_id]
      @reader = Reader.find(session[:reader_id])
    end
  end
end
