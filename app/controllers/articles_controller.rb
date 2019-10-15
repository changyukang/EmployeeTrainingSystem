class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  before_action :logged_in_user, only: [:index, :show]
  before_action :adimin_and_manager_user, only: [:new, :edit, :create, :upate, :destroy]

  # GET /articles
  # GET /articles.json
  def index
    @articles = Article.all
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
    @article = Article.find(params[:id])
    @quiz=Quiz.find(@article.id)
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # GET /articles/1/edit
  def edit
  end

  # POST /articles
  # POST /articles.json
  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:success] = "Article was successfully created."
      redirect_to :controller => 'quizzes', :action => 'new'  #could have put redirect_to @user but wanted to be explicit
    else
      render "new"
    end 

    #respond_to do |format|
     # if @article.save
     #   format.html { redirect_to @article, notice: 'Article was successfully created.' }
     #   #format.json { render :show, status: :created, location: @article }
     # else
     #   format.html { render :new }
     #   format.json { render json: @article.errors, status: :unprocessable_entity }
     # end
    #end
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      flash[:success] = "Article was successfully updated."
      redirect_to @article
    else
      render 'edit'
    end
  end

  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  #def update
  #  respond_to do |format|
  #    if @article.update(article_params)
  #      format.html { redirect_to @article, notice: 'Article was successfully updated.' }
  #      format.json { render :show, status: :ok, location: @article }
  #    else
  #      format.html { render :edit }
  #      format.json { render json: @article.errors, status: :unprocessable_entity }
  #    end
  #  end
  #end


  def destroy
    Article.find(params[:id]).destroy
    flash[:success] = "Article was successfully destroyed."
    redirect_to articles_url
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  #def destroy
  # @article.destroy
  #  respond_to do |format|
  #    format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' }
  #    format.json { head :no_content }
  #  end
  #end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:article).permit(:title, :category, :body, :course_id)
    end

    # Confirms the correct user.
    def adimin_and_manager_user
      unless current_user.manager? || current_user.admin?
        flash[:danger] = "You do not have access"
        redirect_to(root_url) 
      end
    end
end
