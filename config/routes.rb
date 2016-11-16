Rails.application.routes.draw do

  devise_for :users

  resources :tweets

  resources :users, except:[:destroy,:update,:edit,:show]

  root 'tweets#index'

  get 'tweets/index'

  get 'tweets/show'

  get 'tweets/new'

  post "tweets" => "tweets#create"

  get 'users/index' #=> 'users#index'

  get 'users/new'

  get 'users/show/:id' => 'users#show'

  post "users" => "users#create"




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
