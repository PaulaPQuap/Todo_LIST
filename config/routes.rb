Rails.application.routes.draw do
  
  resources :todo_lists do  
    resources :todo_items do  # list all the items that belong that list
      member do
        patch :complete
      end
    end
  end
  
  root "todo_lists#index"
end