Rails.application.routes.draw do
  resources :working_hours, only: [:index]
  

  
  root to: 'working_hours#index'
end
