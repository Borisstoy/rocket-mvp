Rails.application.routes.draw do
  scope '(:locale)', locale: /fr|en/ do
    devise_for :users
    #pages
    root to: 'pages#home'
    get 'qa' => 'pages#faq', as: :faq
    #projects
    resources :project_requests
  end

end
