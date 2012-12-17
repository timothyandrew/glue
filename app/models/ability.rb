class Ability
  include CanCan::Ability

  def initialize(user_info)
    if user_info[:email] =~ /\@c42\.in$/
      can :manage, Snippet
    end
  end
end
