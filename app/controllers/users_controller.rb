class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
    redirect_to posts_path
  end

  def edit
  end

  def update
  end

  def login
  end

  def logout
  end

  def ensure_correct_user
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
