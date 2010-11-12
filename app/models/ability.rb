class Ability
  include CanCan::Ability

  def initialize(user)
    if user
      can :manage, Website
      can :manage, Product
      can :manage, Version
    end
  end
end