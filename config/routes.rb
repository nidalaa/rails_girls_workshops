Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'ideas#index'
  resources :ideas, only: %i[index new create show] do
    resources :comments, except: :show
  end
end
