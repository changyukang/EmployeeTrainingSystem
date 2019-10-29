class CoursesController < ApplicationController
  before_action :logged_in_user
  before_action :set_course, only: [:show, :edit, :update, :destroy]
  before_action :manager_user,   only: [:index]

  # GET /courses
  # GET /courses.json
  def index
    @courses = Course.paginate(:page => params[:page], :per_page=>20)
  end

  def show_user_courses
    @user = User.find(session[:user_id])
    @courses=@user.courses
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
    @user = User.find(session[:user_id])
    @articles = @course.articles
  end

  # GET /courses/new
  def new
    @course = Course.new
  end

  # GET /courses/1/edit
  def edit
  end

  def show_article_wikis
  end

  def show_article_quizzes
  end

  
  
  def courses
    @user = User.find(session[:user_id])
    @users = User.all
    @array_courses = Array.new
    @user_groups = UserGroup.find_by_sql ["select * from user_groups where user_id = ?", session[:user_id]]
    @user_groups.each do |user_group|
      # TODO: use array to store the result
      # @courses = Course.find_by_sql ["select distinct name,id,introduction,course_id,group_id from courses where group_id = ?", user_group.group_id]
      @courses = Course.paginate_by_sql("select distinct name,id,introduction,course_id,group_id from courses where group_id = '#{user_group.group_id}'", :page => params[:page], :per_page=>5)
      # @ktest= Course.paginate(:page => params[:page], :per_page=>5)
      # @courses_count = @courses.count
    end
  end

  # POST /courses
  # POST /courses.json
  def create
    @course = Course.new(course_params)

    if @course.save
      #log_in @user
      flash[:success] = "Course created"
      redirect_to course_url(@course) #could have put redirect_to @user but wanted to be explicit
    else
      render 'new'
    end 
  end

  # PATCH/PUT /courses/1
  # PATCH/PUT /courses/1.json
  def update
    @course = Course.find(params[:id])
    if @course.update(course_params)
      flash[:success] = "Course Updated"
      redirect_to @course
    else
      render 'edit'
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

    # Confirms a manager user.
  def manager_user
    redirect_to(root_url) unless current_user.manager?
  end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_params
      params.require(:course).permit(:name, :introduction, :course_id, :group_id, :totalQuizzes)
    end
end
