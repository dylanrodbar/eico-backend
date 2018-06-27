module Api
class RatingtypesController < ApplicationController
  def index
    @ratingtypes = Ratingtype.order('created_at DESC')
    render json:@ratingtypes
  end

  def show
    @ratingtype = Ratingtype.find(params[:id])
    render json:@ratingtype
  end

  def create
    @ratingtype = Ratingtype.new({name: params[:name]})
    @ratingtype.save
    render json:@ratingtype
  end

  def destroy
    @ratingtype = Ratingtype.find(params[:id])
    @ratingtype.destroy
    render json:@ratingtype
  end

  def update
    @ratingtype = Ratingtype.find(params[:id])
    @ratingtype.name = params[:name]
    @ratingtype.save
    render json:@ratingtype
  end
end
end