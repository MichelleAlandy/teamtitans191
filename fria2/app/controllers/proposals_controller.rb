class ProposalsController < ApplicationController
	def create
	end

	def index
		@user ||= User.new
		if !@user.curr_type
			@user.curr_type = params[:curr_type]
		end
	end

	def read
	end

	def update
	end

	def delete
	end

	# def create
	# 	insert shit here
	# end
end
