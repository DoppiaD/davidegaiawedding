class GuestPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def update?
    user_is_owner?
  end

  def participate?
    user_is_owner?
  end

  private

  def user_is_owner?
    record.user == user
  end
end
