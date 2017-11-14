class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    update_attrs = [:image,:nombreUsuario,:nombre,:apellido1,:apellido2,:cedula,:password,
      :password_confirmation, :current_password]
    devise_parameter_sanitizer.permit :account_update, keys: update_attrs
  end

  rescue_from ActionController::RoutingError, :with => :render_404

  private
  def render_404(exception = nil)
    if exception
        logger.info "Rendering 404: #{exception.message}"
    end
      
    render :file => "#{Rails.root}/public/404.html", :status => 404, :layout => false
  end
end
