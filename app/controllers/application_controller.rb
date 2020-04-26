class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  include Pundit

  # Pundit: white-list approach.
  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

  def user_not_authorized(exception)
   # policy_name = exception.policy.class.to_s.underscore

   # redirect_back(fallback_location: root_path, alert: "You are not authorized to perform this action.")
   redirect_to new_user_session_path
   # redirect_to root_path
  end
end
