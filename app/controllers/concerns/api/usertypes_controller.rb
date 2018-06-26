module Api
class UsertypesController < ApplicationController

  def index
    @usertypes = Usertype.order('created_at DESC')
    render json:@usertypes
  end

  def create
    @usertype = Usertype.new({name: params[:name]})
    @usertype.save
    render json:@usertype
  end
end
end