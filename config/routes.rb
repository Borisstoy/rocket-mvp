Rails.application.routes.draw do
  devise_for :users

  scope '(:locale)', locale: /fr|en/ do
    root to: 'pages#home'
    get "/pages/*page" => "pages#projects"
  end

end
