class UserRegistriesController < ApplicationController
  def create
    @registry = Registry.find(params[:registry])
    @user_registry = UserRegistry.new(user: current_user, registry: @registry)
    authorize @user_registry
    @user_registry.save
    redirect_to registries_path(anchor: "card-registry-#{params[:registry]}")
  end

  def destroy
    @user_registry = UserRegistry.find_by(user: current_user, registry_id: params[:id])
    authorize @user_registry
    @user_registry.destroy
    redirect_to registries_path(anchor: "card-registry-#{params[:id]}")
  end
  #
  # private
  #
  # def honeymoon_params
  #   params.require(:honeymoon).permit(:registry)
  # end
end
