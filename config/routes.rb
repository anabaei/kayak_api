Rails.application.routes.draw do
  get 'tokens/create'
  resources :tokens, only: [:create]
  # get 'users/index'
  #
  # get 'users/new'
  #
  # get 'users/create'
  root 'users#index'

  get 'results/index'
  resources :users, only: [:index, :new, :create]
  post 'users/doajax' => 'users#doajax'
  
  # namespace :api, defaults: { format: :json } do
  namespace :api do
    namespace :v1 do
      resources :symptoms, only: [:index, :show, :create]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
