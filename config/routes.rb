Rails.application.routes.draw do
  root 'accounts#index'

  resources :accounts do
    resources :tasks, except: [:index, :show]
    resources :creative_developments,  except: [:index, :show]
    resources :reports, only: [:new, :create]
    resource :monthly_messaging_timeline, only: [:edit, :update]
  end

  resources :reports, only: [:show] do
    resources :instagram_reports, except: [:index, :show]
  end

end
