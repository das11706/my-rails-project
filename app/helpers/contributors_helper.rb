module ContributorsHelper
  def contri_log_in(contributor)
    session[:contributor_id] = contributor.id  
  end

  def current_user
    @current_user ||= Contributor.find_by(id: session[:contributor_id])
  end

  def logged_in?
    !current_user.nil?
  end

  def log_out
    session.delete(:contributor_id)
    @current_user = nil
  end
end
