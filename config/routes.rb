Rails.application.routes.draw do

  devise_for :users

  resources :tweets

  root 'tweets#index'

  get 'tweets/index'

  get 'tweets/show'

  get 'tweets/new'

  post "tweets" => "tweets#create"

  get 'users/index'

  get 'users/new'

  get 'users/index/:username'=>'users#index'

  get 'users/show/:username'=>'users#show'


  post "users" => "users#create"




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
