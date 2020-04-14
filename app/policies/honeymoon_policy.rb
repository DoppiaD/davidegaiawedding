class HoneymoonPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def create?
    user_signed_in?
  end

  def destroy?
    record.user == user
  end

end
