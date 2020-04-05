class GuestsController < ApplicationController
  before_action :set_guest, only: [:edit, :update]

  def index
    @guests = policy_scope(Guest).order(:created_at)
  end

  def edit
  end

  def update
    if @guest.update(guest_params)
      redirect_to guests_path
    else
      respond_to do |format|
        format.html {
          @guests = policy_scope(Guest).order(:created_at)
          render 'index'
        }
        format.js
      end
    end
  end

  def participate
    @guest = Guest.find(params[:guest_id])
    authorize @guest
    @guest.update_attributes(participate: (params[:participate] == "true"))
    # respond_to do |format|
    #   format.html { redirect_to guests_path }
    #   format.js
    # end
    redirect_to guests_path
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
