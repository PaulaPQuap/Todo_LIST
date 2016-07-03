Rails.application.routes.draw do
  
  resources :todo_lists do  
    resources :todo_items  # list all the items that belong that list
  end
  
  root "todo_lists#index"
end