Rails.application.routes.draw do
  devise_for :users

  resources :farms, except: :desroy

  root 'farms#index'
end
