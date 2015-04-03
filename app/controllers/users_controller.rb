class UsersController < ApplicationController
  before_action :public_access, only: [:new, :create]
  before_action :private_access, only: [:index]
  before_action :admin_access, only:[:index]

  def index
    @users = User.order('created_at DESC')
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      sign_in(@user)
      redirect_to courses_path
    else
      render :new
    end
  end

  def activate
    current_user.update(activate_params)
    KMTS.record(current_user.email, 'Activated')
  end

  private
    def user_params
      params.require(:user).permit(:email, :password)
    end

    def activate_params
      params.require(:user).permit(:first_name, :gender, :optimism, :motivation, :growth_mindset)
    end
end
