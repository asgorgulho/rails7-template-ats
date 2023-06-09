Rails.application.routes.draw do
  get 'resumes/show'

  resources :applicants do
    patch :change_stage, on: :member
    get :resume, action: :show, controller: 'resumes'
  end

  resources :jobs
  devise_for :users,
    path: '',
    controllers: {
      registrations: 'users/registrations'
    },
    path_names: {
      sign_in: 'login',
      password: 'forgot',
      confirmation: 'confirm',
      sign_up: 'sign_up',
      sign_out: 'signout'
    }

  get 'dashboard/show'

  # For logged susers
  authenticated :user do
    root to: 'dashboard#show', as: :user_root
  end

  # For non-logged users
  devise_scope :user do
    root to: 'devise/sessions#new'
  end
end
