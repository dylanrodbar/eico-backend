module Api
class CalendarsController < ApplicationController
  def index
    @calendars = Calendar.order('created_at DESC')
    render json:@calendars
  end

  def show
    @calendar = Calendar.find(params[:id])
    render json:@calendar
  end

  def create
    @calendar = Calendar.new({title: params[:title], description: params[:description], date: params[:date]})
    @calendar.save
    render json:@calendar
  end

  def destroy
    @calendar = Calendar.find(params[:id])
    @calendar.destroy
    render json:@calendar
  end

  def update
    @calendar = Calendar.find(params[:id])
    @calendar.title = params[:title]
    @calendar.description = params[:description]
    @calendar.date = params[:date]
    @calendar.save
    render json:@calendar
  end

end
end