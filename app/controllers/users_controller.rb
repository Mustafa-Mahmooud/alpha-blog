class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user, notice: "User created successfully, welcome #{@user.name}!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def user_params
    # Accept the virtual password fields used by has_secure_password.
    # password_digest is generated automatically when the user is saved.
    # Accept namespaced parameters from Rails forms, while also handling
    # forms that submit the user attributes at the top level.
    params.fetch(:user, params).permit(:name, :email, :password, :password_confirmation)
  end

end