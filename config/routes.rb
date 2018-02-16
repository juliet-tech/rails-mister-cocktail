Rails.application.routes.draw do

  root to: 'cocktails#index'
  resources :cocktails, only: [ :show, :index, :new, :create ] do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :doses, only: [ :new, :create ]
  end

  resources :doses, only: [ :destroy ]

end
