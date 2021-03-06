Rails.application.routes.draw do
  post "/graphql", to: "graphql#execute"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users

  namespace :api do
    namespace :v1 do
      resources :announces
      resources :tags
      resources :user_roles
      resources :users
    end
  end
end
