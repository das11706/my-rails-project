class SessionsController < ApplicationController
  
  def new
  end

  def create
    reader = Reader.find_by(email: params[:session][:email].downcase)
    if reader && reader.authenticate(params[:session][:password])
      log_in reader
      redirect_to reader
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy

  end

end
