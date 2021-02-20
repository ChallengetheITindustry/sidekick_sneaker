Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  #↓トップページは後で変更する。
  root "posts#index"
  resource :tops
  resources :like_lists
  devise_for :users
  resources :users, :only => [:show]
  resources :collections
  resources :posts do
    resource :post_likes, only: [:create, :destroy]
    resources :comments, only: [:new, :create]
  end
end
