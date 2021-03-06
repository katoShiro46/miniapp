class TweetsController < ApplicationController
  before_action :move_to_index, except: [:index,:show]

  def index
    @tweets = Tweet.all.order("id DESC")
  end

  def new
    @tweet = Tweet.new
  end

  def create
    Tweet.create(title:tweet_params[:title],text:tweet_params[:text],image_url:tweet_params[:image_url],adress:tweet_params[:adress],user_id:current_user.id)
    redirect_to action: :index
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def update
    tweet = Tweet.find(params[:id])
    tweet.update(tweet_params)
    redirect_to action: :index
  end

  def destroy
    Tweet.find(params[:id]).destroy
    redirect_to action: :index
  end

  def presentation
  end

  private
  def tweet_params
    params.require(:tweet).permit(:title,:text,:image_url,:adress)
  end
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
