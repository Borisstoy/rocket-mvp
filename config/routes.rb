Rails.application.routes.draw do
  scope '(:locale)', locale: /fr|en/ do
    devise_for :admin_users, {class_name: 'User'}.merge(ActiveAdmin::Devise.config)
    ActiveAdmin.routes(self)
    devise_for :users
    #pages
    root to: 'pages#home'
    get 'qa' => 'pages#faq', as: :faq
    get 'about' => 'pages#about', as: :about
    #projects
    resources :project_requests
  end

end
