class ProposalsController < ApplicationController
	def create

	end

	def index
		# @user ||= User.new(params[:curr_type])
		# # if !@user.curr_type
		# # 	@user.curr_type = params[:curr_type]
		# # end
		@user = User.where("id = ?", current_user.id).first
		puts "---------"
		puts @user.curr_type
		puts "---------"

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
