Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts , :only => [:show, :index, :new, :create, :edit, :update, :destroy]
  resources :welcome , :only => [:index]
  root "welcome#index"

  get '/welcome' => "welcome#index"
end
