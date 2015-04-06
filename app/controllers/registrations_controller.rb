class RegistrationsController < Devise::RegistrationsController
	protected

	def after_sign_up_path_for(resource)
		if params[:is_company] == "yes"
			current_user.update(:is_company => "true")
			'/companies/new'
		else
			'/user_accounts/new'
		end
	end
end	