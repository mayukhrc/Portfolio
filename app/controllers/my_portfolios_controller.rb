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

 def edit
 	@portfolio = MyPortfolio.find(params[:id])
 end
 def update
 	@portfolio = MyPortfolio.find(params[:id])
 	respond_to do |format|
      if @portfolio.update(params.require(:my_portfolio).permit(:title, :body))
        format.html { redirect_to my_portfolios_path, notice: 'Blog was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
 end
end
