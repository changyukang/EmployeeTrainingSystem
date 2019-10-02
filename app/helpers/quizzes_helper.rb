module QuizzesHelper
	def get_users()
		@users = User.find(session[:user_id])
	end
end
