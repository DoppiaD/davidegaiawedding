class Guest < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  validates :name, :last_name, presence: true
end
