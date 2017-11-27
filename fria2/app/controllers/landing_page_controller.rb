class LandingPageController < ApplicationController
	def index
		@user ||= User.new
		if !@user.curr_type
			@user.curr_type = params[:curr_type]
		end
		if current_user && @user.curr_type == 'Dean'
			render 'dean/index'
		end
		if current_user && @user.curr_type == 'Researcher'
			render 'researcher/index'
		end
		if current_user && @user.curr_type == 'Admin'
			render 'admin/index'
		end
		if current_user && @user.curr_type == 'Committee Member'
			render 'committee_member/index'
		end
	end
end
