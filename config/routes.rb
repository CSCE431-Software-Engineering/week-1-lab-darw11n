Rails.application.routes.draw do
 
  root "main#index"

  match 'about' , to: "main#about", via: :get

  match 'hello' , to: "main#hello", via: :get


  get 'main/index'
  #get 'books/index'
  #get 'books/new'
  #get 'books/edit'
  #get 'books/show'
  #get 'books/delete'

  resources :books do
    member do
      get :delete
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
