class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :logistics ]

  def home
  end

  def logistics
  end
end
