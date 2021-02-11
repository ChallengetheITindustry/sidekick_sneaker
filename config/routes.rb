Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  #↓トップページは後で変更する。
  root "posts#index"
  devise_for :users
  resources :posts do
    resource :post_likes, only: [:create, :destroy]
    resources :comments, only: [:new, :create]
  end
end
