class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :travel ]
  # before_action :authenticate_user!
  def home
  end

  def faq
  end

  def about
  end

  # Landing pages
  def travel
    render 'pages/landings/travel/landing_travel'
  end
end
