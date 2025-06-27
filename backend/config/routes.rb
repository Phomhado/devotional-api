Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :devotionals do
        collection do
          get :today
        end
      end
    end
  end
end
