Rails.application.routes.draw do

  get 'home/about' => 'homes#about'
  root to: 'homes#top'
  devise_for :users
  resources :relationships, only: [:create, :destroy]
  resources :users,only: [:show,:index,:edit,:update] do
    get "followers"=>"relationships#followers"
    get "follows"=>"relationships#follows"
  end

  resources :books do
    resource :favorites, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end

  get 'search/index' => 'search#index'

end