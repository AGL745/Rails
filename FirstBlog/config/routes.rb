Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "articles#index" 


  # Rails provides a routes method named resources that maps all of the conventional routes for a collection of resources, such as articles. 

  # This creates comments as a nested resource within articles. This is another part of capturing the hierarchical relationship that exists between articles and comments.


  resources :articles do
    resources :comments
  end


  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show"
end
