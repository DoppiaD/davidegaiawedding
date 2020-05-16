class Guest < ApplicationRecord
  belongs_to :user

  validates :name, :last_name, :avatar, presence: true
  validates_inclusion_of :avatar, in: GuestsController::AVATARS
end
