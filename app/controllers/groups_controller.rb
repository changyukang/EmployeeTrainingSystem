class GroupsController < ApplicationController
  before_action :logged_in_user
  before_action :set_group, only: [:show, :edit, :update, :destroy]
  before_action :manager_user,   only: [:index]

  # GET /groups
  # GET /groups.json
  def index
    @groups = Group.paginate(:page => params[:page], :per_page=>20)
  end

  # GET /groups/1
  # GET /groups/1.json
  def show
    @group = Group.find(params[:id])
    @members = @group.users
  end

  # GET /groups/new
  def new
    @group = Group.new
  end

  # GET /groups/1/edit
  def edit
  end

  # POST /groups
  # POST /groups.json
  def create
    @group = Group.new(group_params)

    if @group.save
      #log_in @user
      flash[:success] = "Group created"
      redirect_to group_url(@group) #could have put redirect_to @user but wanted to be explicit
    else
      render 'new'
    end    
  end

  # PATCH/PUT /groups/1
  # PATCH/PUT /groups/1.json
  def update
    @group = Group.find(params[:id])
    if @group.update(group_params)
      flash[:success] = "Group updated"
      redirect_to @group
    else
      render 'edit'
    end
  end

  # DELETE /groups/1
  # DELETE /groups/1.json
  def destroy
    Group.find(params[:id]).destroy
    flash[:success] = "Group deleted"
    redirect_to groups_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group
      @group = Group.find(params[:id])
    end

    # Confirms a manager user.
  def manager_user
    redirect_to(root_url) unless current_user.manager?
  end
    
    def group_params
      params.require(:group).permit(:name)
    end
end
