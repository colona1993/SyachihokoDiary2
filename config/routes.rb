Rails.application.routes.draw do

	get "/users/id:" => "users#show"
  devise_for :users
 	resources :users, only:[:index, :show]
 	# resources :articles

  resources :articles do
  	resource :like, only: [:create, :destroy]
	end

	root 'articles#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
