module ApplicationHelper
  def logged_in_user(user)
    user.email.split('@').first.capitalize
  end

  def links_to_display(disp_link)
    unless user_signed_in?
      case disp_link
      when 'Sign Up'
        'Sign Up'
      when 'Sign In'
        'Sign In'
      end
    else
      case disp_link
      when 'Create New Post'
        'Create New Post'
      when 'signed_in_user'
        "Logged in as: #{current_user.email.split('@').first.capitalize}"
      when 'Sign Out'
        'Sign Out'
      end
    end
  end
end
