Rails.application.routes.draw do
  resources :subjects
  resources :teachers
  get '/A_12_Karina_Kozarova', to: 'subjects#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
