Rails.application.routes.draw do
  scope '(:locale)', locale: /fr|en/ do
    ActiveAdmin.routes(self)
    devise_for :users

    scope "/home" do
      root to: "pages#home"
    end
    # root to: 'pages#home'
    #projects
    resources :project_requests
    #landings
    get 'travel' => 'pages#travel', as: :travel
  end
end
