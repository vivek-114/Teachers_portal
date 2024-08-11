Rails.application.routes.draw do
  get 'students/update'
  resources :students, only: [:index, :edit, :update, :create, :destroy]

  root 'sessions#new'
  
  get    'login',  to: 'sessions#new'
  post   'login',  to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'teacher_home', to: 'teachers#home'

  resources :students, only: [:index, :new, :create, :edit, :update, :destroy]
end
