Rails.application.routes.draw do
  scope '(:locale)', locale: /fr|en/ do
    ActiveAdmin.routes(self)
    devise_for :users

    #pages
    root to: 'pages#home'
    get 'qa' => 'pages#faq', as: :faq
    get 'about' => 'pages#about', as: :about

    #landings
    get 'travel' => 'pages#travel', as: :travel

    #projects
    resources :project_requests
  end

end
