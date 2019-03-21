Rails.application.routes.draw do
  devise_for :users
  resources :foro do
    resources :answers
  end
  resources :perfil, only: 'index'
  get 'my-questions', to: 'foro#my_questions'
  root 'welcome#index'
end
