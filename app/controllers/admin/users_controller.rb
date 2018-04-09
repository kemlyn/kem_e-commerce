class Admin::UsersController < Admin::BaseController
  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user = User.update(user_params)
  end

  def destroy
    @user = User.find(params[:id])
    @user = User.destroy
  end

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
