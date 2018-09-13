
class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, :all . # permissions for every user, even if not logged in
    alias_action :create, :read, :update, :destroy, to: :crud # saving crud in a variable called :crud
    if user.present?  # additional permissions for logged in users (they can manage their posts)
      can :crud, Photo, user_id: user.id
      can :crud, Comment, user_id: user.id
      if user.admin?  # additional permissions for administrators
        can :manage, :all
        can :access, :rails_admin   # grant access to rails_admin
        can :read, :dashboard       # grant access to the dashboard
      end
    end
  end
end
