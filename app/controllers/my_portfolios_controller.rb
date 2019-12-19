class MyPortfoliosController < ApplicationController
	def index
		@portfolio=MyPortfolio.all
	end
end
