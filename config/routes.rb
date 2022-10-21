Rails.application.routes.draw do
  resources :posts
  get 'main/index'

  root to: "main#index"
  resources :products#, only: [:index, :new, :show] #index,show,new,create,edit,update,destroy
  # get "/articles" => "articles#list"
  # get "/articles/:id" => "articles#list"

  # resources :users do
  #     get "report", on: :member 
  # end

  # namespace :admin do
  #   resources :articles
  # end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
