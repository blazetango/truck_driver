Rails.application.routes.draw do
  root to: "truck_drivers#index"
  devise_for :users
  resources :escalations
  resources :settlements
  resources :payments
  resources :purchases
  resources :truck_drivers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :truck_drivers do
        get :payments
        get :escalations
        # post :add_order
        # post :add_wallet_history
      end
    end
  end
  #
end
