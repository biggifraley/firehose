class QuotesController < ApplicationController
	def index
		@quote = Quotes.order("RANDOM()").first
	end

	def new
		@quote = Quotes.new
	end
end
