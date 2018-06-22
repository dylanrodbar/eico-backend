module Api
class SitesController < ApplicationController

  def index
    @sites = Site.order('created_at DESC')
    render json:@sites
  end

  def create
    @site = Site.new({title: params[:title], description: params[:description]})
    @site.save
    render json:@site
  end

end
end
