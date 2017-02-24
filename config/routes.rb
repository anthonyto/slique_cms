Rails.application.routes.draw do
  root 'accounts#index'

  resources :accounts do
    resources :tasks, except: [:index, :show]
    resources :creative_developments,  except: [:index, :show]
    resources :reports, only: [:new, :create]
  end

  resources :instagram_reports, only: [:index, :new, :create]

end
