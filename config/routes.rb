Rails.application.routes.draw do
  root 'static_pages#home'

  devise_for :users 
  
  resources :users do
    resources :debts
    resources :accounts
  end

  scope 'debts/:debt_id', as: 'debt' do
    resources :payments, only: [:new, :create, :edit]
  end

  resources :feedbacks

<<<<<<< HEAD
=======
  get '/about', to: 'static_pages#about'
  get '/home', to: 'static_pages#home'
  get '/blog', to: 'static_pages#blog'
  
>>>>>>> database_update
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
