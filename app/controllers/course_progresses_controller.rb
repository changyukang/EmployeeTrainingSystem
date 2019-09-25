class CourseProgressesController < ApplicationController
  before_action :set_course_progress, only: [:show, :edit, :update, :destroy]

  # GET /course_progresses
  # GET /course_progresses.json
  def index
    @course_progresses = CourseProgress.all
  end

  # GET /course_progresses/1
  # GET /course_progresses/1.json
  def show
  end

  # GET /course_progresses/new
  def new
    @course_progress = CourseProgress.new
  end

  # GET /course_progresses/1/edit
  def edit
  end

  # POST /course_progresses
  # POST /course_progresses.json
  def create
    @course_progress = CourseProgress.new(course_progress_params)

    respond_to do |format|
      if @course_progress.save
        format.html { redirect_to @course_progress, notice: 'Course progress was successfully created.' }
        format.json { render :show, status: :created, location: @course_progress }
      else
        format.html { render :new }
        format.json { render json: @course_progress.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_progresses/1
  # PATCH/PUT /course_progresses/1.json
  def update
    respond_to do |format|
      if @course_progress.update(course_progress_params)
        format.html { redirect_to @course_progress, notice: 'Course progress was successfully updated.' }
        format.json { render :show, status: :ok, location: @course_progress }
      else
        format.html { render :edit }
        format.json { render json: @course_progress.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_progresses/1
  # DELETE /course_progresses/1.json
  def destroy
    @course_progress.destroy
    respond_to do |format|
      format.html { redirect_to course_progresses_url, notice: 'Course progress was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_progress
      @course_progress = CourseProgress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_progress_params
      params.require(:course_progress).permit(:user_id, :course_id, :progress)
    end
end
