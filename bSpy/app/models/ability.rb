class Ability
  include CanCan::Ability

  def initialize(user)
    unless user.nil?
    	if user.admin?
    	  can :manage, :all
    	else
    	  can :read, :all
    	end
    end
  end
end