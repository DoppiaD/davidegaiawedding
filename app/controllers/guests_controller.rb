class GuestsController < ApplicationController
  before_action :set_guest, only: [:edit, :update]

  def index
    @guests = policy_scope(Guest).order(created_at: :asc)
  end

  def edit
  end

  def update
    if @guest.update(guest_params)
      redirect_to "#{guests_path}collapse#{@guest.id}"
    else
      @guests = Guests.all
      render 'index'
    end
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
