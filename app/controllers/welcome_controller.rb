class WelcomeController < ApplicationController
  def index
    @mantenimientos = Mantenimiento.all # Obtén todos los mantenimientos aquí
    @motors = Motor.all # Obtén todos los motores aquí
  end

  def terms_and_conditions

  end

  def accept_terms
    # Realiza aquí cualquier acción que necesites al aceptar los términos.
    # Puedes almacenar el estado de aceptación en la base de datos o
    # realizar otras operaciones necesarias.
    # Después de eso, puedes redirigir al usuario a la página principal u otra página.

    flash[:notice] = "Has aceptado los términos y condiciones."

  end
end
