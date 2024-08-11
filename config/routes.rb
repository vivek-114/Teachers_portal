Rails.application.routes.draw do
  get 'students/index'
  get 'students/new'
  get 'students/create'
  get 'students/open_student_model'
  get 'students/edit'
  get 'students/update'
  get 'students/destroy'
  get 'teachers/home'
  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/destroy'

  root 'sessions#new'
  
  get    'login',  to: 'sessions#new'
  post   'login',  to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'teacher_home', to: 'teachers#home'

  resources :students, only: [:index, :new, :create, :edit, :update, :destroy]
end
