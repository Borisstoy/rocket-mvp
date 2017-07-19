class ProjectRequestsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :new, :create ]
  before_action :set_project, only: [:edit]

  include ProjectRequestsHelper

  def new
    @new_project = ProjectRequest.new
  end

  def create
    @new_project = ProjectRequest.new project_requests_params

    set_new_project_instance

    respond_to do |format|
      if @new_project.save
        format.html { redirect_to root_path }
        format.js
        flash[:notice] = t('controllers.projects.success')
        AdminNotificationMailer.new_project_notification(@new_project).deliver
      else
        format.html { render 'edit' }
        format.js
        flash[:alert] = t('controllers.projects.fail')
      end
    end
  end

  def edit
  end

  private

  def project_requests_params
    params.require(:project_request).permit(:name,
                                             :email,
                                             :description,
                                             :travel,
                                             :home)
  end

  def set_project
    @project = ProjectRequest.find(params[:id])
  end
end
