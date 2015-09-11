class FarmanRegistrationsController < Devise::RegistrationsController
  # layout 'registration'

  respond_to :json

 #  def after_sign_up_path_for(resource)
 #  	resource.save
	#   after_sign_in_path_for(resource)
	# end

  protected

	  def sign_up_params
	    # params.require(:usuario).permit(:email, :password, :password_confirmation, :remember_me, 
	    # 	:pessoa_attributes => [:nome, :sexo, :empresa_attributes => [:nome, :telefone, :email, :endereco, :cep, :bairro, :numero, :complemento, :cidade, :estado]])
	  end
end