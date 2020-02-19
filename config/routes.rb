Rails.application.routes.draw do
  root to: "restaurants#index"
  resources :restaurants do
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :reviews, only: [:new, :create]
  end
end
