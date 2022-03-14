Rails.application.routes.draw do
  resources :portfolios
  #get 'pages/home'
  get 'about' , to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'portfolio/:id', to: 'portfolios#show' , as: 'portfolio_show'
  resources :blogs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :blogs do
    member do
      get :toogle_status
    end
  end

   root "pages#home"
end
