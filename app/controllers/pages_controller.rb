class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :logistics, :touristinfo ]

  def home
  end

  def logistics
  end

  def touristinfo
  end
end
