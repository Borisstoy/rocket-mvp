class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :faq, :about ]

  def home
  end

  def faq
  end

  def about
  end
end
