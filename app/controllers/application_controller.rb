class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :set_current_user

  before_action :authenticate_usuario!

  def index
  end

	def set_current_user
    Usuario.current = current_usuario
  end
end
