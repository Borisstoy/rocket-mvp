class ProjectRequestsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :new, :create ]

  def new
    @new_project = ProjectRequest.new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @new_project = ProjectRequest.new project_requests_params
  end

  private

  def project_requests_params
    params.require(:new_project).permit(:name,
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
