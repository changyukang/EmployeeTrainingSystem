module StaticPagesHelper
  # Returns true if the user is the current user.
  def current_user?(user)
    user == current_user
  end
end
