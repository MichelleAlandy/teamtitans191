class AdminController < ApplicationController
  def index
  	@user.curr_type = "Admin"
  end
end
