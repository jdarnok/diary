class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  def index
    if params[:role]
    @users = User.where(params[:role])
    end
  else
    @users = User.all
  end



  def show
  end

  def edit
  end

  def update
  end

  def create
    @user = User.create(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User created' }


      else
        format.html { render :new }
      end
    end
    end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User destroyed' }

    end
  end

  def new
    @user = User.new
  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :school_class_id)
  end
end
