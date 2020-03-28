class Guest < ApplicationRecord
  belongs_to :user

  validates :name, :last_name, presence: true
end
