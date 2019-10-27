class ScoresController < ApplicationController
  before_action :logged_in_user
  before_action :set_score, only: [:show, :edit, :update, :destroy]
  before_action :manager_user,   only: [:index]
  before_action :admin_user, only: :destroy

  # GET /scores
  # GET /scores.json
  def index
    @scores = Score.all
  end

  def show_data
    @scores = Score.all
    @articles=Article.all
    if(params[:article_id].blank?)
      @currentArticle=Article.find(1)
    else
      @currentArticle=Article.find(params[:article_id])
    end
    array=[]
    for a in 0..9 do
      bin=a*10
      array[a]=Score.where(article_id: params[:article_id],score: bin..bin+10).count
    end
    @test=[["0-10%",array[0]],["10-20%",array[1]],["20-30%",array[2]],["30-40%",array[3]],["40-50%",array[4]],["50-60%",array[5]],["60-70%",array[6]],
    ["70-80%",array[7]],["80-90%",array[8]],["90-100%",array[9]]]
    @averageScore=Score.where(article_id: params[:article_id]).average(:score)
    attempts=Score.where(article_id: params[:article_id])
    hash=attempts.distinct.group(:user_id).count()

    count=0
    sum=0
    hash.each do |key, value|
      count=count+1
      sum=sum+value
    end
    if(count!=0)
      @averageAttempts=sum.to_f/count.to_f
    end
  end

  # GET /scores/1
  # GET /scores/1.json
  def show
  end

  # GET /scores/new
  def new
    @score = Score.new
  end

  # GET /scores/1/edit
  def edit
  end

  # POST /scores
  # POST /scores.json
  def create
    @score = Score.new(score_params)

    respond_to do |format|
      if @score.save
        format.html { redirect_to @score, notice: 'Score was successfully created.' }
        format.json { render :show, status: :created, location: @score }
      else
        format.html { render :new }
        format.json { render json: @score.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scores/1
  # PATCH/PUT /scores/1.json
  def update
    respond_to do |format|
      if @score.update(score_params)
        format.html { redirect_to @score, notice: 'Score was successfully updated.' }
        format.json { render :show, status: :ok, location: @score }
      else
        format.html { render :edit }
        format.json { render json: @score.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scores/1
  # DELETE /scores/1.json
  def destroy
    @score.destroy

    flash[:success] = "Attempt deleted"
    redirect_to scores_url

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_score
      @score = Score.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def score_params
      params.require(:score).permit(:user_id, :article_id, :score)
    end

    # Confirms an admin user.
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end

      # Confirms a manager user.
    def manager_user
      redirect_to(root_url) unless current_user.manager?
    end
end
