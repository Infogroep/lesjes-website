class PagesController < ApplicationController
	def login
		if logged_in?
			redirect_to home_url, notice: "You are already logged in."
		end
	end

	def logout
		if logged_in?
			perform_logout
			redirect_to home_url, notice: "Logged out"
		else
			redirect_to home_url, alert: "You are not logged in."
		end
	end

	def validate_login
		if trylogin(login_params)
			redirect_to home_url, notice: "Logged in."
		else
			redirect_to home_url, alert: "Failed login."
		end
	end

	private

	def login_params
		params.permit(:username,:password)
	end
end
