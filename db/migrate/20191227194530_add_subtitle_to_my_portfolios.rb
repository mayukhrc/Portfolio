class AddSubtitleToMyPortfolios < ActiveRecord::Migration[6.0]
  def change
    add_column :my_portfolios, :subtitle, :string
  end
end
