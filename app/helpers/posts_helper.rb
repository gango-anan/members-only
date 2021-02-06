module PostsHelper
  def display_author(post)
    if user_signed_in?
      user_mail = User.find_by(id: post.user_id).email
      user_mail.split('@').first.capitalize
    end
  end
end
