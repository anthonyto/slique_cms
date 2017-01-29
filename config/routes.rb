Rails.application.routes.draw do
  root 'accounts#index'

  resources :accounts do
    resources :tasks, only: [:edit, :update, :new, :create, :destroy]
    recourses :creative_developments, only: [:edit, :update, :new, :create, :destroy]
  end
end
