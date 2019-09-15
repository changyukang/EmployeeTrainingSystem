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
    @users = User.all
    @user = User.find(session[:user_id])
    # @user = current_user
    @currentCourse = @user.currentCourse
    @course = Course.find(@user.currentCourse)
    @courseName = @course.name
    @courseIntroduction = @course.introduction
    @articles= Article.find(@user.currentCourse)
    # @wikis = Article.find(@user.currentCourse)
    # @quizzes =Article.find(@user.currentCourse)
  end


end