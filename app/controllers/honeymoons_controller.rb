class HoneymoonsController < ApplicationController
  # def create
  #   @registry = Registry.find(honeymoon_params)
  #   authorize @registry
  #   @honeymoon = Honeymoon.new
  #   authorize @honeymoon
  #
  #   if @honeymoon.save(user: current_user, registry: @registry)
  #     redirect_to registries_path
  #   else
  #     render registries_path
  #   end
  # end

  def destroy

  end

  private

  def selected?

  end

  def honeymoon_params
    params.require(:honeymoon).permit(:registry)
  end
end
