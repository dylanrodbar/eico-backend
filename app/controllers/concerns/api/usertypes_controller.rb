module Api
class UsertypesController < ApplicationController

  def index
    @usertypes = Usertype.order('created_at DESC')
    render json:@usertypes
  end

  def show
    @usertype = Usertype.find(params[:id])
    render json:@usertype
  end

  def create
    @usertype = Usertype.new({name: params[:name]})
    @usertype.save
    render json:@usertype
  end

  def destroy
    @usertype = Usertype.find(params[:id])
    @usertype.destroy
    render json:@usertype
  end

  def update
    @usertype = Usertype.find(params[:id])
    @usertype.name = params[:name]
    @usertype.save
    render json:@usertype
  end
end
end