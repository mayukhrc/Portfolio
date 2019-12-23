class MyPortfoliosController < ApplicationController
	def index
		@portfolio=MyPortfolio.all
	end
	def new
		@portfolio = MyPortfolio.new
	end
	def create
    @portfolio = MyPortfolio.new(params.require(:my_portfolio).permit(:title, :body))

    respond_to do |format|
      if @portfolio.save
        format.html { redirect_to my_portfolios_path, notice: 'Portfolio was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end
end
