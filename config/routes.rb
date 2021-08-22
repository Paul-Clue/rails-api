Rails.application.routes.draw do
    resources :user do
      resources :appointments
    end
    resources :frame
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
