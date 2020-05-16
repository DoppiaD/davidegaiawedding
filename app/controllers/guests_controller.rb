class GuestsController < ApplicationController
  before_action :set_guest, only: [:edit, :update, :participate]

  AVATARS = %w(Aragorn Arwen Frodo Galadriel Gandalf Gimli Legolas Sam Saruman)

  def index
    @guests = policy_scope(Guest).order(:created_at)
  end

  def edit
  end

  def update
    if @guest.update(guest_params)
      # Update seperatelu participate to take into account Nil case of +1
      @guest.update(participate: true)
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
    # Unknown +1 Guests are initialized with nil name and last name
    # If Nil no need to update participate until user saves name+last name
    if @guest.name.nil? || @guest.last_name.nil?
      redirect_to "#{guests_path}##{@guest.id}"
    elsif @guest.toggle!(:participate) && @guest.participate
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
    params.require(:guest).permit(:participate, :name, :last_name, :allergies, :shuttle_to, :shuttle_from, :avatar)
  end
end
