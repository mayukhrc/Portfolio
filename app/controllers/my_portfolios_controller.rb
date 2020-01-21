class MyPortfoliosController < ApplicationController
  before_action :set_portfolio_item, only: [:edit, :update, :show, :destroy]
  layout "portfolio"
	
	def index
		@portfolios = MyPortfolio.all
	end

	def angular
		@angular = MyPortfolio.angular
	end

	def rubyonrails
		@rubyonrails = MyPortfolio.ruby_on_rails
	end
	
	def new
		@portfolio = MyPortfolio.new
		3.times {@portfolio.technologies.build}
	end

	def create
    @portfolio = MyPortfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio.save
        format.html { redirect_to my_portfolios_path, notice: 'Portfolio was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

 def edit
 end

 def update

 	respond_to do |format|
      if @portfolio.update(portfolio_params)
        format.html { redirect_to my_portfolios_path, notice: 'Blog was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
 end

 def show
 end
 
 def destroy
 	
 	@portfolio.destroy
    respond_to do |format|
      format.html { redirect_to my_portfolios_url, notice: 'Record was successfully destroyed.' }
    end
 end

 private

 def portfolio_params
  params.require(:my_portfolio).permit(:title,
                                      :subtitle, 
                                      :body, 
                                      technologies_attributes: [:name]
                                      ) 
 end

 def set_portfolio_item
  @portfolio = MyPortfolio.find(params[:id])
 end
end
