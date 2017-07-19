class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :travel ]

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
