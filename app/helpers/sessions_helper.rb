module SessionsHelper

  def log_in(reader)
    session[:reader_id] = reader.id  
  end

  def current_user
    @current_user ||= Reader.find_by(id: session[:user_id])
  end
end
