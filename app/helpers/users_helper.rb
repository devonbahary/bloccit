module UsersHelper
  def user_has_posts?
    current_user && current_user.posts.any?
  end
  
  def user_has_comments?
    current_user && current_user.comments.any?
  end
end
