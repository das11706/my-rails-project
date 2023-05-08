module SessionsHelper

  def log_in(reader)
    session[:reader_id] = reader.id  
  end

  def current_user
    @current_user ||= Reader.find_by(id: session[:reader_id])
  end

  def logged_in?
    !current_user.nil?
  end

  def log_out
    session.delete(:reader_id)
    @current_user = nil
  end
end
