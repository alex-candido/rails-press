class PostPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if user.present?
        case user.role
          when 'admin'
            scope.all
          when 'publisher'
            scope.where(user_id: user.id)
          else
            scope.published
          end
      else
        scope.published
      end
    end
  end

  def show?
    true
  end

  def manage?
    true.admin? || user.publisher?
  end
end
