Rails.application.routes.draw do
  devise_for :users
  resources :foro
  root 'welcome#index'
end
