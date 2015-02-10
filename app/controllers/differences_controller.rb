class DifferencesController < ApplicationController
	before_action :find_difference, only: [:update, :destroy, :edit, :show]

	def index
		@differences = Difference.all
	end

	def create
		@difference = Difference.create(diff_params)
		redirect_to root_url
	end

	def new
		@difference = Difference.new
	end

	def show

	end

	def update
		@difference.update(diff_params)
		redirect_to root_url
	end

	def destroy
		@difference.destroy
		redirect_to root_url
	end

	def edit
	end


	private

	def find_difference
		@difference = Difference.find(params[:id])
	end

	def diff_params
		params.require(:difference).permit(:title, :description)
	end
end
