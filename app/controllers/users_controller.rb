class UsersController < ApplicationController
  def index
    @users = User.all
    render :index
  end

  def destroy
  	@user = User.find(params[:id])
  	@user.destroy
  	redirect_to users_path, notice: "User deleted."
  end

  def new
  	@user = User.new
	  render :new
  end

  def create
    @user = User.create(user_params)
    redirect_to users_path, notice: 'User created.'
  end

  def edit
  	@user = User.find(params[:id])
  	render :edit
  end

  private
    def user_params
      params.require(:user).permit(:username, :password)
    end
end