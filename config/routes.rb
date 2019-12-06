Rails.application.routes.draw do
  root to: 'accounts#index'
  devise_for :users
  
  resources :accounts do
    resources :debts
  end

  scope 'debts/:debt_id', as: 'debt' do
    resources :payments, only: [:new, :create, :edit]
  end

  resources :feedbacks


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
