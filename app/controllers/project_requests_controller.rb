class ProjectRequestsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :new, :create ]
  before_action :set_project, only: [:edit]

  def new
    @new_project = ProjectRequest.new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @new_project = ProjectRequest.new project_requests_params

    set_project_kind

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
    respond_to do |format|
      format.html
      format.js { render 'edit.js.erb' }
    end
  end


  private

  def project_requests_params
    params.require(:project_request).permit(:name,
                                             :email,
                                             :description,
                                             :travel)
  end

  def set_project
    @project = ProjectRequest.find(params[:id])
  end

  def set_project_kind
    if request.fullpath.include? 'travel'
      @new_project.travel = true
      @new_project.save
    end
  end
end
