module Api
class RatingsController < ApplicationController
  def index
    @ratings = Rating.order('created_at DESC')
    render json:@ratings
  end

  def show
    @rating = Rating.find(params[:id])
    render json:@rating
  end

  def create
    #@rating = Rating.new({post_id: params[:post_id], ratingtype_id: params[:ratingtype_id], user_id: params[:user_id], date: params[:date]})
    #@rating.save
    #render json:@rating

    #se pregunta si hay un rating para el usuario y post
    @rating = Rating.where(:user_id=>params[:user_id]).where(:post_id=>params[:post_id]).first

    #en caso de que sí, se debe evaluar si la calificación que se quiere dar ya existe
    if @rating.present?

      @rating_specific = Rating.where(:user_id=>params[:user_id]).where(:post_id=>params[:post_id]).where(:ratingtype_id=>params[:ratingtype_id]).first

      #si la calificación específica ya existe, solo se quita el rating
      if @rating_specific.present?
        @rating.destroy
      #en caso contrario, se quita el rating y se crea uno con la calificación nueva
      else
        @rating.destroy
        @rating = Rating.new({post_id: params[:post_id], ratingtype_id: params[:ratingtype_id], user_id: params[:user_id], date: params[:date]})
        @rating.save
      end
    #si la calificación no existía, solo se crea una nueva
    else
      @rating = Rating.new({post_id: params[:post_id], ratingtype_id: params[:ratingtype_id], user_id: params[:user_id], date: params[:date]})
      @rating.save

    end
    render json:@rating


  end

  def destroy
    @rating = Rating.find(params[:id])
    @rating.destroy
    render json:@rating
  end

  def update
    @rating = Rating.find(params[:id])
    @rating.post_id = params[:post_id]
    @rating.ratingtype_id = params[:ratingtype_id]
    @rating.user_id = params[:user_id]
    @rating.save
    render json:@rating
  end


  def getbydaymonthyear
    @ratings = Rating.where('extract(month  from date) = ?', params[:month]).where('extract(year  from date) = ?', params[:year]).where('extract(day  from date) = ?', params[:day])
    @relevants = 0
    @indifferents = 0
    @excitings = 0
    @date = params[:day]+"-"+params[:month]+"-"+params[:year]
    @ratings.each do |rating|
      @relevants = @relevants + 1 if rating.ratingtype.name == "Relevante"
      @indifferents = @indifferents + 1 if rating.ratingtype.name == "Indiferente"
      @excitings = @excitings + 1 if rating.ratingtype.name == "Emocionante"
    end

    render json: {date: @date, relevants: @relevants, indifferents: @indifferents, excitings: @excitings}
  end
end
end