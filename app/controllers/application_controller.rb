class ApplicationController < ActionController::Base
  ##  Devise
  # before_action :store_user_location!, if: :storable_location?
  before_action :authenticate_user! # :authenticate_user! NEEDS to be after the store_user_location!

  ## Pundit: white-list approach.
  include Pundit
  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private
  ## Pundit
  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end
  def user_not_authorized(exception)
   # policy_name = exception.policy.class.to_s.underscore
   # redirect_back(fallback_location: root_path, alert: "You are not authorized to perform this action.")
   redirect_to root_path
  end
  ##  Devise
  # def after_sign_in_path_for(resource_or_scope)
  #   stored_location_for(resource_or_scope) || super
  # end

  # Its important that the location is NOT stored if:
  # - The request method is not GET (non idempotent)
  # - The request is handled by a Devise controller such as Devise::SessionsController as that could cause an
  #    infinite redirect loop.
  # - The request is an Ajax request as this can lead to very unexpected behaviour.
  # def storable_location?
  #  request.get? && is_navigational_format? && !devise_controller? && !request.xhr?
  # end
  #
  # def store_user_location!
  #  store_location_for(:user, request.fullpath)
  # end
end
