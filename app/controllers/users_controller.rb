class UsersController < ApplicationController

	def index
		@users = User.all 
	end

	def show
		@user = User.find(params[:id])
	end

	# @User<= 複数形はｓをつける
end
