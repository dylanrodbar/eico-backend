module Api
class UsersController < ApplicationController

  def index
    @users = User.order('created_at DESC')
    render json:@users
  end

  def create
    @user = User.new({username: params[:username], password: params[:password], email: params[:email], title: params[:title], profession: params[:profession], workplace: params[:workplace], media: params[:media], usertype_id: params[:usertype_id]})
    @user.save
    puts(@user.workplace)
    render json:@user
  end
end
end