Rails.application.routes.draw do
  scope '(:locale)', locale: /fr|en/ do
    devise_for :users
    root to: 'pages#home'
    resources :project_requests
  end

end
