Rails.application.routes.draw do
  #↓トップページは後で変更する。
  root "posts#index"
  devise_for :users
  resources :posts
end
