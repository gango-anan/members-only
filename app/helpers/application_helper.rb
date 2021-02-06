module ApplicationHelper
  def logged_in_user(user)
    user.email.split('@').first.capitalize
  end
end
