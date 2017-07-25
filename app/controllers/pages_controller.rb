class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :travel, :rhythm_and_soul ]

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

  def rhythm_and_soul
    render 'pages/landings/rhythm/landing_rhythm'
  end
end
