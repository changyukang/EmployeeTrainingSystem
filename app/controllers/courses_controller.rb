class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]

  # GET /courses
  # GET /courses.json
  def index
    # @courses = Course.all
    courses # select the courses belong to the current user
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
  end

  # GET /courses/new
  def new
    @course = Course.new
  end

  # GET /courses/1/edit
  def edit
  end

  def show_wikis
    @user = User.find(session[:user_id])
    @currentCourse = @user.currentCourse
    # @articles= Article.find(@user.currentCourse)
    @articles_wiki = Article.find_by_course_id_and_category(@user.currentCourse, "Wiki")
  end

  def show_quizzes
    @user = User.find(session[:user_id])
    @currentCourse = @user.currentCourse
    # @articles= Article.find(@user.currentCourse)
    @articles_quiz = Article.find_by_course_id_and_category(@user.currentCourse, "Quiz")
  end

  
  
  def courses
    @users = User.all
    # @user = User.find(session[:user_id])
    # TODO: replaced by group_id
    # @groups = UserGroup.find_by_user_id(session[:user_id])
    @array_courses = Array.new
    @user_groups = UserGroup.find_by_sql ["select * from user_groups where user_id = ?", session[:user_id]]
    @user_groups.each do |user_group|
      @courses = Course.find_by_sql ["select distinct name,id,introduction,course_id,group_id from courses where group_id = ?", user_group.group_id]
      # @courses.each do |course|
      #   @array_courses.push(course)
      # end
      # @array_courses.uniq
      # @courses.each do |course|
      #   @articles_wiki = Article.find_by_course_id_and_category(course_id, "Wiki")
      #   @articles_quiz = Article.find_by_course_id_and_category(course_id, "Quiz")
        # @array_courses.push(course)
      # end
    end
    # @currentCourse = @user.currentCourse
    # @courses = Course.find_by_group_id(@user.currentCourse)
    # @courseName = @course.name
    # @courseIntroduction = @course.introduction
    # @articles_wiki = Article.find_by_course_id_and_category(@user.currentCourse, "Wiki")
    # @articles_quiz = Article.find_by_course_id_and_category(@user.currentCourse, "Quiz")
  end

  # POST /courses
  # POST /courses.json
  def create
    @course = Course.new(course_params)

    respond_to do |format|
      if @course.save
        format.html { redirect_to @course, notice: 'Course was successfully created.' }
        format.json { render :show, status: :created, location: @course }
      else
        format.html { render :new }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /courses/1
  # PATCH/PUT /courses/1.json
  def update
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to @course, notice: 'Course was successfully updated.' }
        format.json { render :show, status: :ok, location: @course }
      else
        format.html { render :edit }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    @course.destroy
    respond_to do |format|
      format.html { redirect_to courses_url, notice: 'Course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_params
      params.require(:course).permit(:name, :introduction, :course_id, :group_id)
    end
end
