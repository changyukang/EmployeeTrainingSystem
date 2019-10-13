class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def about
  end

  def contact
  end
  
  def status
    @users = UserCourse.paginate(:page => params[:page], :per_page=>5)
  end

  # def show_wikis
  #   @user = User.find(session[:user_id])
  #   @currentCourse = @user.currentCourse
  #   # @articles= Article.find(@user.currentCourse)
  #   @articles_wiki = Article.find_by_course_id_and_category(@user.currentCourse, "Wiki")
  # end

  # def show_quizzes
  #   @user = User.find(session[:user_id])
  #   @currentCourse = @user.currentCourse
  #   # @articles= Article.find(@user.currentCourse)
  #   @articles_quiz = Article.find_by_course_id_and_category(@user.currentCourse, "Quiz")
  # end
  
  # def courses
  #   @users = User.all
  #   @user = User.find(session[:user_id])
  #   # @user = current_user
  #   @currentCourse = @user.currentCourse
  #   @course = Course.find(@user.currentCourse)
  #   @courseName = @course.name
  #   @courseIntroduction = @course.introduction
  #   # @articles= Article.find(@user.currentCourse)
  #   # @articles=Article.find(:conditions => { :currentCourse => @user.currentCourse, :category => 'Wiki' })
  #   # @articles=Article.find(:conditions => ["category = ?", 'Wiki'])
  #   # @articles=Article.find(:conditions => ["course_id= ?", 2])
  #   @articles_wiki = Article.find_by_course_id_and_category(@user.currentCourse, "Wiki")
  #   @articles_quiz = Article.find_by_course_id_and_category(@user.currentCourse, "Quiz")
  #   # @wikis = Article.find(@user.currentCourse)
  #   # @quizzes =Article.find(@user.currentCourse)
  # end


end