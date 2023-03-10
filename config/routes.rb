Rails.application.routes.draw do
  devise_for :users
  root to: 'lists#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :lists, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:create, :new]
  # bookmark needs a list
  # no need to nest destroy, we dont need a list
  end
  resources :bookmarks, only: [:destroy]
end

# routes is overwhelming, need explanations??
