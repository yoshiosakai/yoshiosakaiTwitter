class TweetsController < ApplicationController

  # ユーザがログインしていないと"new"にアクセスできない
  before_action :authenticate_user!, only: :new

  def index
  @tweets = Tweet.all
end

  def show
  end

  def new
    @tweets = Tweet.all
  end

  def create
    @tweet = Tweet.new
    @tweet.title = params[:tweet][:title]
    @tweet.content = params[:tweet][:content]
    @tweet.save
    redirect_to 'http://localhost:3000/tweets/new'
  end

  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy
    redirect_to 'http://localhost:3000/tweets/new'
  end




end
