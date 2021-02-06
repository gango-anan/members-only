module ApplicationHelper
  def logged_in_user(user)
    user.email.split('@').first.capitalize
  end

  def links_to_display(login_status)
    if login_status
      render 'layouts/user_logged_in'
    else
      render 'layouts/user_not_logged_in'
    end
  end
end
