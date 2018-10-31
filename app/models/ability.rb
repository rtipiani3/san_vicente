class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    user ||= User.new # guest user (not logged in)

    alias_action :tree, to: :read
    alias_action :create, :read, :update, to: :cru
    alias_action :create, :update, :delete, to: :cud
    alias_action :create, :read, :update, :delete, to: :crud

    if user.type_user == 'admin'
      can :manage, :all
    elsif user.type_user == 'recepcionist'
      can :read, :all
      can :crud, Attention
      can :read, Employee
      can :read, Enterprise
      can :cru, Exam
      can :cru, TypeExam
    elsif user.type_user == 'medical'
      can :read, Employee
      can :read, Attention
      can :cru, Exam
      can :cru, TypeExam
    end

    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
