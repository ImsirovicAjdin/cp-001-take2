Rails.application.routes.draw do
  resources :tasks do
    member do
      put :change
    end
  end
  
  devise_for :users
  root "pages#home"
  
  get "pages/about" => "pages#about"
  match "about", :to => "pages#about", via: :get
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
