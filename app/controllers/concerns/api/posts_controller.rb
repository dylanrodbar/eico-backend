module Api
class PostsController < ApplicationController
  def index
    @posts = Post.order('created_at DESC')
    render json:@posts
  end

  def show
    @post = Post.find(params[:id])
    render json:@post
  end

  def create
    @post = Post.new({title: params[:title], description: params[:description], video: params[:video], date: params[:date], media: params[:media], user_id: params[:user_id]})
    @post.save
    render json:@post
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    render json:@post
  end

  def update
    @post = Post.find(params[:id])
    @post.title = params[:title]
    @post.description = params[:description]
    @post.video = params[:video]
    @post.date = params[:date]
    @post.media = params[:media]
    @post.user_id = params[:user_id]
    @post.save
    render json:@post
  end
end
end