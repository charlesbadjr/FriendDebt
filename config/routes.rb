Rails.application.routes.draw do
  namespace :api do
    get 'debts/index'
    get 'debts/new'
    get 'debts/create'
    get 'debts/delete'
  end
  mount_devise_token_auth_for 'User', at: 'api/auth'
  
  namespace :api do
    resources :contacts
  end

  #Do not place any routes below this one
  if Rails.env.production?
    get '*other', to: 'static#index'
  end
end
