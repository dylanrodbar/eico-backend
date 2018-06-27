module Api
class UsersController < ApplicationController

  def index
    @users = User.order('created_at DESC')
    render json:@users
  end

  def show
    @user = User.find(params[:id])
    render json:@user
  end


  def create
    @user = User.new({username: params[:username], password: params[:password], email: params[:email], title: params[:title], profession: params[:profession], workplace: params[:workplace], media: params[:media], usertype_id: params[:usertype_id]})
    @user.save
    render json:@user
  end


  def destroy
    @user = User.find(params[:id])
    @user.destroy
    render json:@user
  end

  def update
    @user = User.find(params[:id])
    @user.username = params[:username]
    @user.password = params[:password]
    @user.email = params[:email]
    @user.title = params[:title]
    @user.profession = params[:profession]
    @user.workplace = params[:workplace]
    @user.media = params[:media]
    @user.usertype_id = params[:usertype_id]
    @user.save
    render json:@user
  end
end
end