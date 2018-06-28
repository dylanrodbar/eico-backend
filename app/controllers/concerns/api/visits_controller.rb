module Api
class VisitsController < ApplicationController
  def index
    @visits = Visit.order('created_at DESC')
    render json:@visits
  end

  def show
    @visit = Visit.find(params[:id])
    render json:@visit
  end

  def create
    @visit = Visit.new({date: params[:date]})
    @visit.save
    render json:@visit
  end

  def destroy
    @visit = Visit.find(params[:id])
    @visit.destroy
    render json:@visit
  end

  def update
    @visit = Visit.find(params[:id])
    @visit.date = params[:date]
    @visit.save
    render json:@visit
  end

  def getbydaymonthyear
    @visits = Visit.where('extract(month  from date) = ?', params[:month]).where('extract(year  from date) = ?', params[:year]).where('extract(day  from date) = ?', params[:day])
    @counter = @visits.count
    @date = params[:day]+"-"+params[:month]+"-"+params[:year]

    render json: {date: @date, visits: @counter}
  end
end
end