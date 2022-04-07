module SessionsHelper
  def current_user
    @current_user ||= User.find_by(id: session[:users_id])
  end

  def logged_in?
    current_user.present?
  end
end
