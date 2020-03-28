class GuestsController < ApplicationController
  before_action :set_guest, only: [:show, :edit, :update]

  def index
    @guests = Guest.all
  end

  def show
  end

  def new
    @guest = Guest.new
  end

  def create
    @guest = Guest.new(guest_params)
    @guest.user = current_user
    if @guest.save
      redirect_to cocktail_path(@guest)
    else
      render 'edit'
    end
  end

  def edit
  end

  def udpate
  end

  private

  def set_guest
    @guest = Guest.find(params[:id])
  end

  def guests_params
    params.require(:guest).permit(:participate, :name, :last_name, :allergies, :shuttle_to, :shuttle_from, :child)
  end
end
