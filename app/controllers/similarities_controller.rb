class SimilaritiesController < ApplicationController
	before_action :find_similarity, only: [:update, :destroy, :edit, :show]

	def index
		@similarities = Similarity.all
	end

	def create
		@similarity = Similarity.create(sim_params)
		redirect_to root_url
	end

	def new
		@similarity = Similarity.new
	end

	def show

	end

	def update
		@similarity.update(sim_params)
		redirect_to root_url
	end

	def destroy
		@similarity.destroy
		redirect_to root_url
	end

	def edit
	end


	private

	def find_similarity
		@similarity = Similarity.find(params[:id])
	end

	def sim_params
		params.require(:similarity).permit(:title, :description)
	end
end
