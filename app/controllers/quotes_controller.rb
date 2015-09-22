class QuotesController < ApplicationController
	def index
		@quote = Quotes.order("RANDOM()").first
	end
end
