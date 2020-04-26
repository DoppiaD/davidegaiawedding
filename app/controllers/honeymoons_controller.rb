class HoneymoonsController < ApplicationController
  def create
    if user_signed_in?
      redirect_to new_user_session_path, alert: "You are not authorized to perform this action."
    end
    binding.pry
    @registry = Registry.find(params[:registry])
    @honeymoon = Honeymoon.new(user: current_user, registry: @registry)
    authorize @honeymoon
    @honeymoon.save
    redirect_to registries_path(anchor: "card-registry-#{params[:registry]}")
  end

  def destroy
    @honeymoon = Honeymoon.find_by(user: current_user, registry_id: params[:id])
    authorize @honeymoon
    @honeymoon.destroy
    redirect_to registries_path(anchor: "card-registry-#{params[:id]}")
  end

  private

  def honeymoon_params
    params.require(:honeymoon).permit(:registry)
  end
end
