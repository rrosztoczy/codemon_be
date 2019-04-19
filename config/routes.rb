Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  Rails.application.routes.draw do
    root to: "api/v1/monsters#index"
    namespace :api do
      namespace :v1 do
        resources :monsters, only: [:index, :show]
        root to: "monsters#index"
      end
    end
  end
end
