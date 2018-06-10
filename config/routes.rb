Rails.application.routes.draw do
  devise_for :users
  resources :posts do
    resources :comments
    resources :likes
  end
  root ('posts#index')
end
