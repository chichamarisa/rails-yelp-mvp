Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 namespace :admin do
   resources :restaurants, only: [:update, :destroy]
 end

 resources :restaurants, except: [:update, :destroy] do
  resources :reviews, only: [:new, :create]
  end

  resources :review, only: [:edit, :update]

end
