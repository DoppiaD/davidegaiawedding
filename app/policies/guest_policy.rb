class GuestPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # scope.all # Anyone can see everything
      scope.where(user: user)
    end
  end

  def create?
    user_is_owner?
  end

  def update?
    user_is_owner?
  end

  private

  def user_is_owner?
    record.user == user
  end
end
