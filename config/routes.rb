Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :slopes 
    end
  end

  namespace :api do
    namespace :v1 do
      resources :rentals
    end
  end

  namespace :api do
    namespace :v1 do
      resources :users
    end
  end

  namespace :api do
    namespace :v1 do
      resources :appointments 
    end
  end




end
