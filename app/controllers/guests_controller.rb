class GuestsController < ApplicationController
  before_action :set_guest, only: [:edit, :update]

  def index
    @guests = policy_scope(Guest)
  end

  def edit
  end

  def udpate
    @guest.update(guest_params)
  end

  def update
      @restaurant = Restaurant.find(params[:id])
      @restaurant.update(restaurant_params)
      redirect_to index
  end

  private

  def set_guest
    @guest = Guest.find(params[:id])
    authorize @guest
  end

  def guest_params
    params.require(:guest).permit(:participate, :name, :last_name, :allergies, :shuttle_to, :shuttle_from, :child)
  end
end
