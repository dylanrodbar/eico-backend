module Api
class ServicesController < ApplicationController
  def index
    @services = Service.order('created_at DESC')
    render json:@services
  end

  def show
    @service = Service.find(params[:id])
    render json:@service
  end

  def create
    @service = Service.new({title: params[:title], description: params[:description]})
    @service.save
    render json:@service
  end

  def destroy
    @service = Service.find(params[:id])
    @service.destroy
    render json:@service
  end

  def update
    @service = Service.find(params[:id])
    @service.title = params[:title]
    @service.description = params[:description]
    @service.save
    render json:@service
  end
end
end