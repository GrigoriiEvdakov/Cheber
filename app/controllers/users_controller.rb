class UsersController < ApplicationController
  before_action :user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all.limit(10)
    render json: @users
  end

  def show
    render json: user
  end

  def new
    @user = User.new
    render json: @user
  end

  def edit
    user
    render json: user
  end

  def create
    @user = User.create(user_params)
    render json: @user, status: :ok
  end

  def update
    if @user = user.update(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    user.destroy
    render json: { status: 'ok'}
  end

  private
  
    def user
      @user ||= User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:login, :password, :role, :email)
    end
end