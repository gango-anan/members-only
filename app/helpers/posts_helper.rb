module PostsHelper
  def display_author(post)
    return nil unless user_signed_in?

    user_mail = User.find_by(id: post.user_id).email
    user_mail.split('@').first.capitalize
  end
end
