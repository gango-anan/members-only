module ApplicationHelper
  def logged_in_user(user)
    user.email.split('@').first.capitalize
  end

  def links_to_display(login_status)
    return render 'layouts/user_not_logged_in' unless login_status

    render 'layouts/user_logged_in'
  end
end
