Rails.application.routes.draw do
  devise_for :users, path: '',path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  root to: 'pages#home'
  resources :my_portfolios, except: [:show]
  get 'angular-items', to: 'my_portfolios#angular'
  get 'ruby-on-rails-items', to: 'my_portfolios#rubyonrails'
  get 'my_portfolio/:id', to: 'my_portfolios#show', as: 'my_portfolio_show'
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  resources :blogs do 
  	member do
  		get :toggle_status
  	end
  end

end
