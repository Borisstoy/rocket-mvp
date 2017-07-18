Rails.application.routes.draw do
  scope '(:locale)', locale: /fr|en/ do
    ActiveAdmin.routes(self)
    devise_for :users
    root to: 'pages#home'
    #projects
    resources :project_requests
    #landings
    get 'travel' => 'pages#travel', as: :travel
    get 'travel' => 'project_requests#new', as: :new_travel_project
  end
end
