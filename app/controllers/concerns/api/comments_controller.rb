module Api
class CommentsController < ApplicationController
  def index
    @comments = Comment.order('created_at DESC')
    render json:@comments
  end

  def show
    @comment = Comment.find(params[:id])
    render json:@comment
  end

  def create
    @comment = Comment.new({description: params[:description], user_id: params[:user_id], date: params[:date], post_id: params[:post_id]})
    @comment.save
    render json:@comment
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    render json:@comment
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.description = params[:description]
    @comment.date = params[:date]
    @comment.user_id = params[:user_id]
    @comment.post_id = params[:post_id]
    @comment.save
    render json:@comment
  end
end
end