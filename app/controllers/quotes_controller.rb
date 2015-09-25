class QuotesController < ApplicationController
	def index
		@quote = Quotes.order("RANDOM()").first
	end

	def new
		@quote = Quotes.new
	end

	def create
		@quote = Quotes.create(quote_params)
		if @quote.invalid?
			flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
		end
		redirect_to root_path
	end

	private

	def quote_params
		params.require(:quotes).permit(:saying, :author)
	end
end
