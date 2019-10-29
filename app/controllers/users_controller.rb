class UsersController < ApplicationController
  before_action :logged_in_user, only: [:index, :show, :edit, :update, :destroy]
  before_action :correct_user,   only: [:edit, :update]
  before_action :manager_user,   only: [:index]
  before_action :admin_user, only: [:destroy]
  # before_action :admin_user, only: [:index]

  # GET /users
  # GET /users.json
  def index
    @users = User.paginate(:page => params[:page], :per_page=>20)
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
    @memberships = @user.groups
    @groups=Group.all
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit. 
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    if @user.save
      #log_in @user
      flash[:success] = "Account created"
      redirect_to user_url(@user) #could have put redirect_to @user but wanted to be explicit
    else
      render 'new'
    end    
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end


  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, 
        :jobTitle, :manager, :phone,:address,:DoB)
    end

    # Confirms an admin user.
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end

      # Confirms a manager user.
    def manager_user
      redirect_to(root_url) unless current_user.manager? || current_user.admin?
    end

    # Confirms the correct user.
    def correct_user
      @user = User.find(params[:id])
      unless current_user?(@user) || current_user.manager? || current_user.admin?
        flash[:danger] = "You do not have access"
        redirect_to(root_url) 
      end
    end
end
