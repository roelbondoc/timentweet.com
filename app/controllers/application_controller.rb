class ApplicationController < ActionController::Base
  helper :all
  protect_from_forgery
  before_filter :get_all_tweets

private
  def get_all_tweets
    if logged_in?
      @scheduled_tweets = current_user.tweets.not_posted.all(:order => "post_on asc")
      @posted_tweets = current_user.tweets.are_posted.all(:order => "post_on desc")
    end
  end
end
