module Api
class ServicesController < ApplicationController
  def index
    @services = Service.order('created_at DESC')
    render json:@services
  end
end
end