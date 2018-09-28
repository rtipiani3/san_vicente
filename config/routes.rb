Rails.application.routes.draw do
  resources :attentions
  get 'attention/:id/exams', to: 'attentions#exams', as: :attention_exams
  get 'exam/:id/edit', to: 'attentions#edit_exams', as: :exam_edit
  get 'attention/:id/new_exams', to: 'attentions#new_exams', as: :attention_new_exams
  post 'attention/:employee_id/create', to: 'attentions#create', as: :attention_create
  patch 'attention/:id/update_general', to: 'attentions#update_general', as: :attention_update_general
  match '/exams/save', to: 'exams#save_exam', via: [:post, :patch], as: :save_exam
  resources :employees
  resources :areas, except: [:show]
  resources :enterprises, except: [:show]
  get 'type_exams', to: 'type_exams#index', as: :type_exams
  devise_for :users
  patch '/users/:id', to: 'users#update_profile'
  resources :users do
    collection do
      get 'edit_profile'
    end
  end
  root 'home#index'
end