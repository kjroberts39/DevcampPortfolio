Rails.application.routes.draw do
  resources :portfolios
  get 'bio', to: 'pages#about'
  get 'contact-me', to: 'pages#contact'


  resources :blogs

  root to: 'pages#home'
end
