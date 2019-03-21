Rails.application.routes.draw do
  devise_for :users
  resources :foro
  get 'my-questions', to: 'foro#my_questions'
  root 'welcome#index'
end
