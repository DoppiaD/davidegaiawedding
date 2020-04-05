class GuestsController < ApplicationController
  before_action :set_guest, only: [:edit, :update]

  def index
    @guests = policy_scope(Guest).order(:created_at)
  end

  def edit
  end

  def update
    if @guest.update(guest_params)
      redirect_to "#{guests_path}#collapse#{@guest.id}"
    else
      @guests = policy_scope(Guest).order(:created_at)
      render 'index'
    end
  end

  def participate
    @guest = Guest.find(params[:guest_id])
    authorize @guest
    @guest.update_attributes(participate: (params[:participate] == "true"))
    redirect_to guests_path
  end

  # def participate
  #   @guest = Guest.find(params[:guest_id])
  #   binding.pry
  #   authorize @guest
  #   if @guest.update_attributes(:participate)
  #     redirect_to guests_path
  #   else
  #     @guests = policy_scope(Guest).order(:created_at)
  #     render 'index'
  #   end
  # end

  private

  def set_guest
    @guest = Guest.find(params[:id])
    authorize @guest
  end

  def guest_params
    params.require(:guest).permit(:participate, :name, :last_name, :allergies, :shuttle_to, :shuttle_from, :child)
  end
end
