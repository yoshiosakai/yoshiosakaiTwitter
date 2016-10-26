class UsersController < ApplicationController
  def index
    @user= User.all
@user = Hash.new
@user[:username] = 'よしお'
  end

  def show
    @user = User.find_by(:username => params[:username])
  end

  def create
    @user = User.new
    @user.name = params[:user][:name]
    @user.username = params[:user][:username]
    @user.location = params[:user][:location]
    @user.about = params[:user][:about]
    @user.save
    redirect_to 'http://localhost:3000/users/index'
  end

def new

end



end
