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
end
