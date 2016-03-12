class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.has_role? :admin
      can :access, :rails_admin
      can :dashboard
    else
      cannot :access, :rails_admin
    end
  end
end
