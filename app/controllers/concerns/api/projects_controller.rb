module Api
class ProjectsController < ApplicationController
  def index
    @projects = Project.order('created_at DESC')
    render json:@projects
  end

  def show
    @projecto = Project.find(params[:id])
    render json:@project
  end

  def create
    @project = Project.new({projectname: params[:projectname], workplace: params[:workplace], initialdate: params[:initialdate], finaldate: params[:finaldate], description: params[:description], user_id: params[:user_id]})
    @project.save
    render json:@project
  end

  def destroy
    @project= Project.find(params[:id])
    @project.destroy
    render json:@project
  end

  def update
    @project = Project.find(params[:id])
    @project.projectname = params[:projectname]
    @project.workplace = params[:workplace]
    @project.initialdate = params[:initialdate]
    @project.finaldate = params[:finaldate]
    @project.description = params[:description]
    @project.user_id = params[:user_id]
    @project.save
    render json:@project
  end

  def getgraduatebyproject
    @projects = Project.where("projectname ilike ?", "%" + params[:projectname] + "%")
    @selectedusers = []
    @projects.each do |project|
      @selectedusers << project.user if project.user.usertype.name == "Graduado"
    end
    render json:@selectedusers

  end
end
end