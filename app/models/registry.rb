class Registry < ApplicationRecord
  has_many :user_registries, dependent: :destroy
  has_many :users, through: :honeymoons
end
