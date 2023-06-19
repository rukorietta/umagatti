class TweetsController < ApplicationController
  def create
    @tweet = Tweet.new(tweet_params)
  
    if @tweet.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  private

  def tweet_params
    params.require(:tweet).permit(:name, :email)
  end
end