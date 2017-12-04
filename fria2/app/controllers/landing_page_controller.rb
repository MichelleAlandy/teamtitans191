class LandingPageController < ApplicationController
	def index
		@user ||= User.new
		if !@user.curr_type
			@user.curr_type = params[:curr_type]
		end
		if current_user && @user.curr_type == 'Dean'
			render 'deans/index'
		end
		if current_user && @user.curr_type == 'Researcher'
			render 'researchers/index'
		end
		if current_user && @user.curr_type == 'Admin'
			render 'admins/index'
		end
		if current_user && @user.curr_type == 'Committee Member'
			render 'committee_members/index'
		end
	end
end
