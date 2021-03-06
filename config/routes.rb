Rails.application.routes.draw do
  scope :api do
    resources :discussions, only: [:index, :create, :show] do
      resources :comments, only: [:create]
    end

    get 'discussions/:month/:day/:year' => 'discussions#show'
  end

root to: 'home#index'

match '*path' => 'home#index', via: :get
end
