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
  post 'students/create', to: "students#create"
  post "students/destroy/:id", to: "students#destroy"
  post '/students/update/:id', to: "students#update"
  post '/students/edit/:id', to: "students#edit"

  post '/teachers_disciplines/create', to: "teachers_disciplines#create"
  post '/teachers_disciplines/add', to: "teachers_disciplines#add"
  post '/teachers_disciplines/destroy/:id', to: "teachers_disciplines#destroy"
  post '/teachers_disciplines/update/:id', to: "teachers_disciplines#update"
  post '/teachers_disciplines/edit/:id', to: "teachers_disciplines#edit"

  post '/teachers/create', to: "teachers#create"
  post '/teachers/add', to: "teachers#add"
  post '/teachers/destroy/:id', to: "teachers#destroy"
  post '/teachers/update/:id', to: "teachers#update"
  post '/teachers/edit/:id', to: "teachers#edit"

  post '/persons/update/:id', to: "persons#update"
  post '/persons/edit/:id', to: "persons#edit"

  post '/disciplines/create', to: "disciplines#create"
  post '/disciplines/add', to: "disciplines#add"
  post '/disciplines/destroy/:id', to: "disciplines#destroy"
  post '/disciplines/update/:id', to: "disciplines#update"
  post '/disciplines/edit/:id', to: "disciplines#edit"

  post '/questions/create', to: "questions#create"
  post '/questions/add', to: "questions#add"
  post '/questions/destroy/:id', to: "questions#destroy"
  post '/questions/update/:id', to: "questions#update"
  post '/questions/edit/:id', to: "questions#edit"

  post '/variants/create', to: "variants#create"
  post '/variants/add', to: "variants#add"
  post '/variants/destroy/:id', to: "variants#destroy"



  post '/attempts/create', to: "attempts#create"
  post '/attempts/add_student', to: "attempts#add_student"

  post '/attempts/add_discipline', to: "attempts#add_discipline"
  post '/attempts/add_dis', to: "attempts#add_dis"

  post '/attempts/add_variant', to: "attempts#add_variant"
  post '/attempts/add_var', to: "attempts#add_var"

  post '/attempts/add_teacher', to: "attempts#add_teacher"
  post '/attempts/add_tea', to: "attempts#add_tea"

  post '/attempts/add_other', to: "attempts#add_other"
  post '/attempts/add_oth', to: "attempts#add_oth"

  post '/attempts/destroy/:id', to: "attempts#destroy"
end
