class UsersController < ApplicationController

	def index
		@users = User.all
		
	end

	def homepage
		
	end

	def show
		@user = User.find(params[:id])
		
	end

	def destroy
		@user = User.find(params[:id])
		if @user.destroy
			flash[:notice] = "Your account was deleted succefully"
		else
			flash[:alert]  = "There was a problem deleting you account"

		end

		redirect_to  "/users"
	end


end