Rails.application.routes.draw do

  namespace :api do
      namespace :v1 do
        resources :trip_result
      end
    end
    resources :users

    namespace :api do
      namespace :v1 do
        resources :trip_date
      end
    end
end
