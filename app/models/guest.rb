class Guest < ApplicationRecord
  belongs_to :user
  has_one_attached :avatar

  validates :name, :last_name, presence: true
end
