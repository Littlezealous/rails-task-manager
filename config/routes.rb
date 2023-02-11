Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
#create
   get "tasks/new", to: "tasks#new"
   post "tasks", to: "tasks#create"
#read
  get "tasks", to: "tasks#index"
  get "tasks/:id", to: "tasks#show", as: "task"

 
end