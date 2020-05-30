class RegistriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    # @registries = policy_scope(Registry)
    @registries = Registry.all
    @user_registries = policy_scope(UserRegistry)
  end

  # def is_selected(id)
  #   @honeymoons = policy_scope(Honeymoon)
  #   # current_user.registries.exists?(registry_id)
  #   @honeymoons.exists?(registry_id: id)
  # end
  # if user_signed_in?
  #   helper_method :is_selected
  # end
end
