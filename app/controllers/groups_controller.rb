class GroupsController < ApplicationController
	before_action :require_user

	def new
		@group = Group.new
	end

	def create
		@group = Group.new(group_params)
		if @group.save
			redirect_to '/show'
		else
			redirect_to '/show/new'
			flash[:invalid_group] = 'Por favor completa la información'
		end
	end

	def show
		@group = Group.find(params[:id])
		@students = @group.students
	end

	def destroy
		@group = Group.find(params[:id])
		@group.destroy
		redirect_to '/show'
	end

	private
	def group_params
		params.require(:group).permit(:university, :degree, :representative, :generation)
	end

end
