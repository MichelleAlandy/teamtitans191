class CommitteeMembersController < ApplicationController
  def index
  	@user.curr_type = "CommitteeMember"
  end
end
