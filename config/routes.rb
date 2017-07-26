Rails.application.routes.draw do
  scope '(:locale)', locale: /fr|en/ do
    devise_for :users
    ActiveAdmin.routes(self)
    root to: "pages#home"
    #projects
    resources :project_requests
    #landings
    get 'travel' => 'pages#travel', as: :travel
    get 'rhythm' => 'pages#rhythm_and_soul', as: :'rhythm'
  end
end
