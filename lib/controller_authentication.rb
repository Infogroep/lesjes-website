module ControllerAuthentication
	def self.included(controller)
		controller.send :helper_method, :logged_in?, :trylogin
	end

	def current_user
		session[:current_user]
	end

	def logged_in?
		current_user
	end

	def login_required
		unless logged_in?
			store_target_location
			redirect_to login_url, flash: { :error => "You must first log in or sign up before accessing this page." }
		end
	end

	def trylogin(credentials)
		trying_user = User.find_by username: credentials[:username]
		session[:current_user] ||= trying_user.authenticate(credentials[:password])
	end

	def perform_logout
		session[:current_user] = false
	end

	private

	def store_target_location
		session[:return_to] = request.url
	end
end
