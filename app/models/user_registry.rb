class UserRegistry < ApplicationRecord
  belongs_to :user
  belongs_to :registry

  # To manage uniquess there is also
  # -> {distinct}
  # added to User and Registry models. It is not clear why it does not work by itself without the code below
  validates_uniqueness_of :registry_id, scope: :user_id
end
