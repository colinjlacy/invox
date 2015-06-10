class AdminController < ApplicationController
	before_action :confirm_admin

  def index
	  @users = User.where.not(id: current_user.id)
  end

  def user
  end

  def new_user
  end

  def create
  end

  def unauthorized
  end

	private

	def confirm_admin
		render :unauthorized if !current_user || current_user.admin? === false
	end
end
