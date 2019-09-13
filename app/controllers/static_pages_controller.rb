class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def about
  end

  def contact
  end

  def courses
  end
    # user = User.find_by(email: params[:session][:email].downcase)
    #   if user && user.authenticate(params[:session][:password])
    #     log_in user
    #     redirect_to user
    #   else
    #     # Create an error message.
    #     flash.now[:danger] = 'Invalid email/password combination'
    #     render 'new'
    #   end

end
