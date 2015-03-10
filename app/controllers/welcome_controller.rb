class WelcomeController < ApplicationController
  def index
    @casey = TweetReader.new
    @othertweets = @casey.anyones_tweets(params[:username])
    @sendtweet = @casey.send_tweet(params[:status])
  end
end
