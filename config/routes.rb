Rails.application.routes.draw do

    post 'login', to: 'user#show'
    post 'login2', to: 'user#create'

    post 'appoint', to: 'appointments#create'
    post 'appoints', to: 'appointments#show'
    post 'appoints2', to: 'appointments#index'

    get 'frm', to: 'frame#show'
    post 'frm', to: 'frame#show'

    delete "del", to: 'user#destroy'
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
