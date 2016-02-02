module DeviseHelper
	#Turn Devise error messages into flash messages to be more friendly with our error handling
	def devise_error_messages!
		if resource.errors.full_messages.any?
		    flash.now[:error] = resource.errors.full_messages
		end
		return ''
	end
end