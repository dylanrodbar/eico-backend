module Api
class SitesController < ApplicationController

  def index
    @sites = Site.order('created_at DESC')
    render json:@sites
  end

  def show
    @site = Site.find(params[:id])
    render json:@site
  end

  def create
    @site = Site.new({title: params[:title], description: params[:description]})
    @site.save
    render json:@site
  end

  def destroy
    @site = Site.find(params[:id])
    @site.destroy
    render json:@site
  end

  def update
    @site = Site.find(params[:id])
    @site.title = params[:title]
    @site.description = params[:description]
    @site.save
    render json:@site
  end

end
end
