class SessionsController < ApplicationController
  
  def new
  end

  # def create
  #   reader = Reader.find_by(email: params[:session][:email].downcase)
  #   if reader && reader.authenticate(params[:session][:password])
  #     log_in reader
  #     redirect_to reader
  #   else
  #     flash.now[:danger] = 'Invalid email/password combination'
  #     render 'new'
  #   end
  # end

  # def destroy
  #   log_out
  #   redirect_to signup_path
  # end

  def create
    @reader = Reader.find_or_create_by(uid: auth['uid']) do |u|
      u.name = auth['info']['name']
      u.email = auth['info']['email']
      u.image = auth['info']['image']
    end

    session[:reader_id] = @reader.id 

    render 'static/home'
  end

  private

  def auth
    request.env['omniauth.auth']
  end
end
