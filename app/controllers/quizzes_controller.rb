class QuizzesController < ApplicationController
  before_action :set_quiz, only: [:show, :edit, :update, :destroy]

  #public void receive(integer data_value){}

  # GET /quizzes
  # GET /quizzes.json
  def index
    @quizzes = Quiz.all
  end

  # GET /quizzes/1
  # GET /quizzes/1.json
  def show
  end

  # GET /quizzes/new
  def new
    @quiz = Quiz.new
    3.times do 
      question = @quiz.questions.build 
      4.times {question.answers.build}
    end
  end

  # GET /quizzes/1/edit
  def edit
    @question = Question.find(params[:id])
    @quiz = Quiz.find(params[:id])
  end

  # POST /quizzes
  # POST /quizzes.json
  def create
    @quiz = Quiz.new(quiz_params)
    @article=Article.find(@quiz.article_id)
    @course=Course.find(@article.course_id)
    temp=@course.totalQuizzes+1
    @course.update(:totalQuizzes, temp)


    respond_to do |format|
      if @quiz.save
        format.html { redirect_to :controller => 'articles', :action => 'index', notice: 'Quiz was successfully created.' }
        format.json { render :show, status: :created, location: @quiz }
      else
        format.html { render :new }
        format.json { render json: @quiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quizzes/1
  # PATCH/PUT /quizzes/1.json
  def update
    @question = Question.find(params[:id])
    @quiz = Quiz.find(params[:id])
    if @quiz.update(quiz_params)
      flash[:success] = "Quiz updated"
      redirect_to @quiz
    else
      render 'edit'
    end
  end

  # DELETE /quizzes/1
  # DELETE /quizzes/1.json
  def destroy
    @quiz.destroy
    respond_to do |format|
      format.html { redirect_to quizzes_url, notice: 'Quiz was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def grading
    @user = User.find(session[:user_id])
    @quiz=Quiz.find(params[:quiz_id])
    @course=Course.find(@quiz.course_id)
    @course_progress=CourseProgress.find_by(user_id: @user.id, course_id: @course.id)

    total=@quiz.questions.count
    answers = params[:answer]
    count=0

    answers.each do |question_id, answer_id|
      @answer=Answer.find(answer_id)
      if @answer.correct_answer
        count=count+1
      else
      end
    end

    result=((count.to_f)/(total.to_f))*100

    @score=Score.new({user_id: @user.id, article_id: @quiz.article_id, score: result})
    @score.save

    if result==100

      temp1=(@course_progress.progress)*(@course.totalQuizzes)+1
      temp=(temp1)/(@course.totalQuizzes)
      @course_progress.update_attribute(:progress, temp)
      
    end
    redirect_to @score
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quiz
      @quiz = Quiz.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quiz_params
      params.require(:quiz).permit(:title, :body, :article_id, :course_id, :data_value, questions_attributes: [:quiz_id, :content, answers_attributes:[:question_id, :content, :correct_answer]])
    end
end
