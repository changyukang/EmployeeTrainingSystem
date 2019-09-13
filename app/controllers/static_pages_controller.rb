class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def about
  end

  def contact
  end

  # Returns true if the user is the current user.
  def current_user?(user)
    user == current_user
  end
  
  def courses
    # user = User.find_by(email: params[:session][:email].downcase)
    #   if user && user.authenticate(params[:session][:password])
    #     log_in user
    #     redirect_to user
    #   else
    #     # Create an error message.
    #     flash.now[:danger] = 'Invalid email/password combination'
    #     render 'new'
    #   end
    # @user = User.find(params[:id]
    @users = User.all
    # @users = current_user
  end

end
