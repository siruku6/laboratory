Rails.application.routes.draw do
  get 'staffs/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :home, only: [:index]
  resources :staffs, only: [:index]
  resources :languages, except: [:show]
  resources :demonstrations, only: [:index] do
    collection do
      post :index
      get :export_staffs
    end
  end

  root 'home#index'
end
