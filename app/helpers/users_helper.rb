module UsersHelper
	 # Confirms a manager user.
    def manager_user
      redirect_to(root_url) unless current_user.manager?
    end
end