Rails.application.routes.draw do
  root 'main#index', as: 'home'
  get 'attempts/index', as: 'attempts'
  get 'variants/index', as: 'variants'
  get 'teachers_disciplines/index', as: 'tdis'
  get 'teachers/index', as: 'teachers'
  get 'students/index', as: 'students'
  get 'disciplines/index', as: 'disciplines'
  get 'questions/index', as: 'questions'
  get "persons/index", as: 'persons'
  get 'students/new', as: 'studnew'
  post 'students/create'
  post "students/destroy/:id", to: "students#destroy"

  post '/teachers_disciplines/create', to: "teachers_disciplines#create"
  post '/teachers_disciplines/add', to: "teachers_disciplines#add"
  post '/teachers_disciplines/destroy/:id', to: "teachers_disciplines#destroy"
  post '/teachers_disciplines/update/:id', to: "teachers_disciplines#update"
  post '/teachers_disciplines/edit/:id', to: "teachers_disciplines#edit"
end
