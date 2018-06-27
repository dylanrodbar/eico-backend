module Api
class EducationsController < ApplicationController
  def index
    @educations = Education.order('created_at DESC')
    render json:@educations
  end

  def show
    @education = Education.find(params[:id])
    render json:@education
  end

  def create
    @education = Education.new({titlename: params[:titlename], school: params[:school], initialdate: params[:initialdate], finaldate: params[:finaldate], description: params[:description], user_id: params[:user_id]})
    @education.save
    render json:@education
  end

  def destroy
    @education = Education.find(params[:id])
    @education.destroy
    render json:@education
  end

  def update
    @education = Education.find(params[:id])
    @education.titlename = params[:titlename]
    @education.school = params[:school]
    @education.initialdate = params[:initialdate]
    @education.finaldate = params[:finaldate]
    @education.user_id = params[:user_id]
    @education.save
    render json:@education
  end
end
end