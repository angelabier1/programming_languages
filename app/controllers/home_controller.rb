class HomeController < ApplicationController

	def index
		@similarities = Similarity.all
		@differences = Difference.all
	end
end
