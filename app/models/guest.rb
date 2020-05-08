class Guest < ApplicationRecord
  belongs_to :user

  validates :name, :last_name, :avatar, presence: true
end
