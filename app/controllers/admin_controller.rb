class AdminController < ApplicationController
	before_action :confirm_admin

	def index
	  @users = User.where.not id: current_user.id
	end

	def user
	  @user = User.find params[:id]
	end

	def new_user
	  @user = User.new
	end

	def create
	@user = User.new(user_params)
		respond_to do |format|
			if @user.save
			  format.html { redirect_to "/admin/", notice: 'User was successfully created.' }
			else
			  format.html { render :new_user }
			end
		end
	end
	
	def unauthorized
	end

	private

	def user_params
		params.require(:user).permit(:email, :password, :password_confirmation, :admin)
	end

	def confirm_admin
		render :unauthorized if !current_user || current_user.admin? === false
	end
end
