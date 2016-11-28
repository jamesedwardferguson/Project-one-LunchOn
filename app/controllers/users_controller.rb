class UsersController < ApplicationController


  def index
    @users = User.all
  end

  def show
    @user = User.find_by id: => params[:id]
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      session[:user_id] = @user_id
      redirect_to user_path (@user)
    else
      render :new
    end
  end

  def edit
    @user = @current_user
  end

  def update
  end
end
