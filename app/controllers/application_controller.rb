class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # Método para redirigir después del cierre de sesión
  def after_sign_out_path_for(resource_or_scope)
    # Puedes personalizar la redirección aquí
    root_path # Redirige al inicio, por ejemplo
  end
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = 'Usted no está autorizado para realizar esta acción.'
    redirect_to root_path # Redirigir a la página de inicio u otra página adecuada
  end
end
