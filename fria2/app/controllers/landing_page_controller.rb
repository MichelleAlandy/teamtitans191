class LandingPageController < ApplicationController
	def index
		@user ||= User.new
		puts "--------"
		puts current_user.curr_type
		puts "--------"
		puts current_user.email
		puts "--------"
		if current_user.curr_type == 'Dean'
			render 'dean/index'
		end
	end
end
