class TweetsController < ApplicationController
  before_filter :login_required

  def index
    @tweet = Tweet.new
  end

  def create
    @tweet = current_user.tweets.new(params[:tweet])
    if @tweet.save
      redirect_to '/'
    else
      render :index
    end
  end

  def destroy
    @tweet = current_user.tweets.find(params[:id])
    @tweet.destroy
    redirect_to '/'
  end
end
