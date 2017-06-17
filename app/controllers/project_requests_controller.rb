class ProjectRequestsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :new, :create ]

  def new
    @project_request = ProjectRequest.new
  end

  def create
    @project_request = ProjectRequest.new project_requests_params
    if @project_request.save
      redirect_to root_path, notice: t('.project_save')
    else
      render :new
    end
  end

  private

  def project_requests_params
    params.require(:project_request).permit(:name,
                                            :last_name,
                                            :email,
                                            :title,
                                            :pain,
                                            :target,
                                            :solution,
                                            :description,
                                            :budget)
  end

end
