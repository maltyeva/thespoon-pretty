Rails.application.routes.draw do
  resources :restaurants do
    collection do
      get 'top', to: "restaurants#top"
      get 'worst',to: "restaurants#worst"
    end
    member do
      get 'chef', to: "restaurants#chef"
    end
  end

  root to: "restaurants#index"


  # get 'restaurants/top', to: "restaurants#top"
  # get 'restaurants/:id/chef', to: "restaurants#chef"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
