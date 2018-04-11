class Admin::UsersController < Admin::BaseController
  def index
    @users = User.unscoped
  end

  def show
    @user = User.unscoped
  end

  def create
    @user = User.new(user_params)
  end

  def new
    @user = User.new
  end

  def restore
    @user = User.unscoped.find(params[:id])
    @user.restore
    redirect_to admin_users_path
  end

  def update
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to admin_users_path
  end

  def user_params
    params.require(:user).permit(:email)
  end
end
