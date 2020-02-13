Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :languages, except: [:show]
  resources :demonstrations, only: [:index] do
    collection do
      get :export_staffs
    end
  end
end
