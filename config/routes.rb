Rails.application.routes.draw do
  resources :topics do
    member do
      post 'upvote'
      post 'dnvote'
    end
  end

  get 'about', to: 'topics#about'

  root 'topics#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
