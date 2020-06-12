class ApplicationController < ActionController::Base
  ##  Devise
  # before_action :store_user_location!, if: :storable_location?
  before_action :authenticate_user! # :authenticate_user! NEEDS to be after the store_user_location!

  ## Pundit: white-list approach.
  include Pundit
  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  ## i18n
  # The gem command sets a before_action that automatically sets locale(s) based on device default language
  include HttpAcceptLanguage::AutoLocale
  # before_action :set_locale
  # def set_locale
  #   # When wanting to switch locale from the view this needs to be active
  #   # I18n.locale = params.fetch(:locale, I18n.default_locale).to_sym
  #   ## View code
  #   ## <% if I18n.locale == I18n.default_locale %> <%= link_to "ITA", url_for( locale: 'it' ) %>
  #
  #   # This is the code that the "include" above executes to set the language = to device language
  #   # I18n.locale = http_accept_language.compatible_language_from(I18n.available_locales)
  # end

  # This action adds the locale (e.g. it) in the url
  def default_url_options
    { locale: I18n.locale == I18n.default_locale ? nil : I18n.locale }
  end

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
