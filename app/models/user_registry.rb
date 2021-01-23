class UserRegistry < ApplicationRecord
  belongs_to :user
  belongs_to :registry

  validates_uniqueness_of :registry_id, scope: :user_id
end
