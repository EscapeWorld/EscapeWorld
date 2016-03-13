class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    # Permissions for our users role
    if user.has_role? :admin
      can :access, :rails_admin
      can :dashboard
      can :manage, :all
    elsif user.has_role? :owner
      can :access, :rails_admin
      can :dashboard
    end

  end
end
