module Api
class PostsController < ApplicationController
  def index
    @posts = Post.order('created_at DESC')
    puts(@posts)
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


  def schoolpostsall
    @posts = Post.order('created_at DESC')
    @schoolposts = []
    @posts.each do |post|
      @schoolposts << post if post.user.usertype.name != "Graduado"
    end
    render json:@schoolposts
  end

  def graduatespostsall
    @posts = Post.order('created_at DESC')
    @graduatesposts = []
    @posts.each do |post|
      @graduatesposts << post if post.user.usertype.name == "Graduado"
    end
    render json:@graduatesposts
  end


  def schoolposts
    @posts = Post.order('created_at DESC')
    @schoolposts = []
    @posts.each do |post|
      @schoolposts << post if post.user.usertype.name != "Graduado"
    end
    @offset = Integer(params[:offset])
    @limit = Integer(params[:limit])
    @limitedposts = @schoolposts.drop(@offset).first(@limit) #el segundo parámetro es el limit y el primero es el offset
    render json:@limitedposts
  end

  def graduatesposts
    @posts = Post.order('created_at DESC')
    @graduatesposts = []
    @posts.each do |post|
      @graduatesposts << post if post.user.usertype.name == "Graduado"
    end
    @offset = Integer(params[:offset])
    @limit = Integer(params[:limit])
    @limitedposts = @graduatesposts.drop(@offset).first(@limit) #el segundo parámetro es el limit y el primero es el offset
    render json:@limitedposts
  end

  def recentposts
    @posts = Post.order('created_at DESC').limit(6)
    render json:@posts
  end


  def getschoolpostbyname
    @posts = Post.where("title ilike ?", "%" + params[:title] + "%")
    @selectedposts = []
    @posts.each do |post|
      @selectedposts << post if post.user.usertype.name != "Graduado"
    end
    render json:@selectedposts


  end

  def getgraduatepostbyname
    @posts = Post.where("title ilike ?", "%" + params[:title] + "%")
    @selectedposts = []
    @posts.each do |post|
      @selectedposts << post if post.user.usertype.name == "Graduado"
    end
    render json:@selectedposts

  end
end
end