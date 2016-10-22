Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'artists#index'
# ====SEARCH ROUTES ONLY FOR ADVANCED SEARCH OPTION====
  # resources :searches
  resources :artists do
    collection do
      get :by_name
      get :created_at
    end

    resources :songs

  end

end
