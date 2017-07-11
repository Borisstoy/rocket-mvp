Rails.application.routes.draw do
  mount ForestLiana::Engine => '/forest'
  scope '(:locale)', locale: /fr|en/ do
    devise_for :users
    #pages
    root to: 'pages#home'
    get 'qa' => 'pages#faq', as: :faq
    get 'about' => 'pages#about', as: :about
    #projects
    resources :project_requests
  end

end
