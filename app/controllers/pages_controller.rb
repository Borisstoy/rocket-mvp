class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :travel]

  def home
    @new_project = ProjectRequest.new
  end

  def faq
  end

  def about
  end

  # Landing pages
  def travel
    render 'pages/landings/travel/landing_travel'
    @new_project = ProjectRequest.new
  end
end
