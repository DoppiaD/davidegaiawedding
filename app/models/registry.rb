class Registry < ApplicationRecord
  has_many :honeymoons, dependent: :destroy
  has_many :users, through: :honeymoons
end
