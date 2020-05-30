class Registry < ApplicationRecord
  has_many :userregistries, dependent: :destroy
  has_many :users, through: :honeymoons
end
