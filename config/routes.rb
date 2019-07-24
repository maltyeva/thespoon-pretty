Rails.application.routes.draw do

  resources :restaurants do
    resources :reviews, shallow: true
  end

  namespace :admin do
    resources :restaurants, only: :index
  end

  root to: "restaurants#index"


  # collection do
  #   get 'top', to: "restaurants#top"
  #   get 'worst',to: "restaurants#worst"
  # end
  # member do
  #   get 'chef', to: "restaurants#chef"
  # end
  # get 'restaurants/top', to: "restaurants#top"
  # get 'restaurants/:id/chef', to: "restaurants#chef"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end



# get 'reviews/new'
# post 'reviews'

# get 'restaurants/:restaurant_id/reviews/new'
# post 'restaurants/:restaurant_id/reviews'
