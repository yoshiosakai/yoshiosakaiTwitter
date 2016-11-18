class UsersController < ApplicationController
  def index
    @user= User.all

  end

  def show
    @user = User.find_by(:id => params[:id])
    @tweets = Tweet.all
  end

  def create
    @user = User.new
      @user.email = params[:user][:email]
    @user.name = params[:user][:name]
    @user.username = params[:user][:username]
    @user.location = params[:user][:location]
    @user.about = params[:user][:about]
    @user.save
    redirect_to 'http://localhost:3000/users/index'
  end

def new

end

private
  def user_params
    params.require(:user).permit(:name, :email,,:password, :password_confirmation, :image, :remember_digest)
  end



end
