class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def show
    render params[:page]
  end
end
