class DeansController < ApplicationController
  def index
    @user = User.find(params[:user_id])
  	puts "yoyoyoyo"
  	puts @user.curr_type
  	puts "yoyoyoyo"
  end
end
