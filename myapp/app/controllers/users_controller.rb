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
			flash[:notice] = "Your account was deleted successfully"
		else
			flash[:alert]  = "There was a problem deleting you account"
		end

		redirect_to  "/users"
	end


	def new
		@user = User.new	
	end


	def create 
		@user = User.create(user_params)

		if @user.save
			flash[:notice] = "User was saved successfully"
            redirect_to root_path

		else
			flash[:alert] = "there was a problem creating your account"
             redirect_to new_user_path
		end

	end

	def edit
		@user = User.find(params[:id])
		
	end
    

    def update
    	@user =User.find(params[:id])   # ==>   @user = User.where(id: params[:id]).first
    	if @user.update_attributes(user_params) # replace params[:user] with user_params
    		flash[:notice] = "your account was updated successfully"
    		redirect_to user_path
    	else
    		flash[:alert] = "There was a problem updating your account"
    		redirect_to edit_user

    	end 

    end




    private


    def user_params
    	params.require(:user).permit(:fname, :lname, :email)
        
    end







end




















