module Api
class RatingsController < ApplicationController
  def index
    @ratings = Rating.order('created_at DESC')
    render json:@ratings
  end

  def show
    @rating = Rating.find(params[:id])
    render json:@rating
  end

  def create
    @rating = Rating.new({post_id: params[:post_id], ratingtype_id: params[:ratingtype_id], user_id: params[:user_id]})
    @rating.save
    render json:@rating
  end

  def destroy
    @rating = Rating.find(params[:id])
    @rating.destroy
    render json:@rating
  end

  def update
    @rating = Rating.find(params[:id])
    @rating.post_id = params[:post_id]
    @rating.ratingtype_id = params[:ratingtype_id]
    @rating.user_id = params[:user_id]
    @rating.save
    render json:@rating
  end
end
end