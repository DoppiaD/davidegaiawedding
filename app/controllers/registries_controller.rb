class RegistriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @registries = Registry.all
    @honeymoons = policy_scope(Honeymoon)
  end
end
