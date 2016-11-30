class UsersController < ApplicationController
  before_action :authorise, :only => [:edit, :update]

  def index
    @users = User.all
  end

  def mylunchons
    @user = @current_user
    @lunch_items = @user.lunch_items
  end

  def show
    @user = User.find_by :id => params[:id]
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @user = @current_user
  end

  def update
    @user = @current_user
    if @user.update( user_params)
      redirect_to @user
    else
      render :edit
    end
  end

def destroy
  user = @current_user
  user.destroy
  redirect_to root_path()
end


  private
    def user_params
      params.require(:user).permit(:email, :image, :name, :address, :password, :password_confirmation)
    end

    def authorise
      unless @current_user.present?
        flash[:error] = "Please login to continue"
        redirect_to login_path()
      end
    end
    #  name            :text
    #  email           :text
    #  image           :text
    #  admin           :boolean          default(FALSE)
    #  password_digest :text
    #  created_at      :datetime         not null
    #  updated_at      :datetime         not null
    #  latitude        :float
    #  longitude       :float
end
