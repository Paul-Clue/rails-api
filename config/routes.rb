Rails.application.routes.draw do
    resources :user do
      resources :appointments
    end
    resources :frame

    post 'login', to: 'user#show'
    post 'login2', to: 'user#create'

    post 'appoint', to: 'appointments#create'
    post 'appoints', to: 'appointments#show'
    post 'appoints2', to: 'appointments#index'

    get 'frm', to: 'frame#show'
    post 'frm', to: 'frame#show'
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
