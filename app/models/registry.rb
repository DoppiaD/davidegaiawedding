class Registry < ApplicationRecord
  has_many :user_registries, dependent: :destroy
  has_many :users, -> { distinct }, through: :user_registries

  # For ActiveAdmin
  def name
    "#{id} - #{activity}"
  end
end
