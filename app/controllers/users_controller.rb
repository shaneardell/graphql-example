class UsersController < ApplicationController

  def index
    @users = User.all.order(:last_name, :first_name)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(_user_params)

    if @user.save
      redirect_to users_path, notice: "User #{@user.first_name} #{@user.last_name} created."
    else
      render :new
    end
  end

  private

  def _user_params
    params.require(:user).permit(
      :first_name,
      :last_name
    )
  end
end

