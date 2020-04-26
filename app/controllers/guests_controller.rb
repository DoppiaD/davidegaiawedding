class GuestsController < ApplicationController
  before_action :set_guest, only: [:edit, :update, :participate]

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
    if @guest.toggle!(:participate) && @guest.participate
      redirect_to "#{guests_path}##{@guest.id}"
    else
      redirect_to guests_path
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
