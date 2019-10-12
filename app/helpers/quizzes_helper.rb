module QuizzesHelper
	def get_users()
		@users = User.find(session[:user_id])
	end

	def get_quiz1()
		@quiz1 = Quiz.find(session[:article_id])
	end
end
