Rails.application.routes.draw do
  root to: 'pages#home'
  resources :my_portfolios
  get 'about-me' to: 'pages#about'
  get 'contact' to: 'pages#contact'
  resources :blogs
end
