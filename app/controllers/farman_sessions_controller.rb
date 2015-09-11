class FarmanSessionsController < Devise::SessionsController
  # POST /usuario/sign_in
  def create
    self.resource = warden.authenticate!(auth_options)
    set_flash_message(:notice, :signed_in) if is_flashing_format?
    sign_in(resource_name, resource)
    redirect_to pessoas_path
    # yield resource if block_given?
    # respond_with resource, location: after_sign_in_path_for(resource)
  end

  # DELETE /usuario/sign_out
  def destroy
	  signed_out = (Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name))
	  set_flash_message :notice, :signed_out if signed_out && is_flashing_format?
	  redirect_to root_path
	  # yield if block_given?
	  # respond_to_on_destroy
	end

	private

  def require_no_authentication
    assert_is_devise_resource!
    return unless is_navigational_format?
    no_input = devise_mapping.no_input_strategies

    authenticated = if no_input.present?
      args = no_input.dup.push scope: resource_name
      warden.authenticate?(*args)
    else
      warden.authenticated?(resource_name)
    end

    if authenticated && resource = warden.user(resource_name)
      flash[:alert] = I18n.t("devise.failure.already_authenticated")
      redirect_to pessoas_path
    end
  end
end