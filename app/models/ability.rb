class Ability
  include CanCan::Ability

  def initialize(user)
    # Definir las capacidades por defecto para usuarios no autenticados o sin rol
    user ||= User.new

    if user.administrador?
      # Capacidad para el rol de Administrador
      can :manage, :all
    elsif user.operador?
      # Capacidad para el rol de Operador
      can :create, Mantenimiento
      can :read, Motor
      can :update, Motor
    end
  end
end
