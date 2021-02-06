module PostsHelper
  def display_author(post)
    if user_signed_in?
      "Posted by: #{ post.user_email.split('@').first.capitalize }"
    end
  end
end
