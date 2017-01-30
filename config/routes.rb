Rails.application.routes.draw do
  root 'accounts#index'

  resources :accounts do
    resources :tasks, except: [:index, :show]
    resources :creative_developments,  except: [:index, :show]
  end
end
