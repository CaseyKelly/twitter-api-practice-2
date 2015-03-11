class WelcomeController < ApplicationController
  def index
    @tweet = TweetReader.new
    @tweets = @tweet.anyones_tweets(params[:username])

    if params.has_key?(:status)
      @sendtweet = @tweet.send_tweet(params[:status])
    end

    if params.has_key?(:username)
      @follow_user = @tweet.follow(params[:username])
    end
    
  end
end
