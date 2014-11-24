class ApplicationController < ActionController::Base
	#before_filter :authenticate_member!
  protect_from_forgery
  def after_sign_in_path_for(resource)
	sign_in_url = "/ideas"
	end
	def after_sign_out_path_for(resource)
	sign_out_url = "/members/sign_in"
	end
end
