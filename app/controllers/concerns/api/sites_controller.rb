module Api
class SitesController < ApplicationController

  def index
    @sites = Site.order('created_at DESC')
    render json:@sites
  end

end
end
