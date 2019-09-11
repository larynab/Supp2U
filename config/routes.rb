Rails.application.routes.draw do
	mount Rswag::Ui::Engine => '/api-docs'
	mount Rswag::Api::Engine => '/api-docs'
	get 'controllername/new'
	get 'controllername/create'
	# get 'home_controller/index'
	root 'home#index'
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	#ALL 7 ACTIONS = index, new, create, show, edit, update, destroy.
	#EDIT and NEW will not be used.

  	namespace :api do
		namespace :v1 do
		# resources :home, only: [:index, :show]
			post '/auth/login', to: 'authentication#login'
			resources :users, except: [:edit, :new] do
				resources :customers, only: [:index, :create]
				resources :businesses, only: [:index, :create]
			end

			resources :businesses, except: [:create, :edit, :new] do
				get :ratings, on: :member
				resources :menus, only: [:index, :create]
				resources :schedules, only: [:index, :create]
				resources :reviews, only: [:index]
				resources :orders, only: [:index]
			end

			resources :customers, except: [:create, :edit, :new] do
				resources :reviews, only: [:index, :create]
				resources :carts, only: [:index, :create]
				resources :orders, only: [:index, :create]
			end

			resources :menus, only: [:show, :update, :destroy] do
				resources :items, only: [:index, :create]
			end

			resources :items, only: [:show, :destroy, :update]
			resources :orderitems, only: [:show, :index, :destroy, :update]
			resources :reviews, only: [:show, :destroy, :update]
			resources :schedules, only: [:show, :destroy, :update]

			resources :carts, only: [:show, :update] do
				put :add, on: :member
				get :itemfetch, on: :member
			end

			resources :orders, only: [:show, :index, :destroy, :update] do 
				post :ship, on: :member
				post :additem, on: :member
				resources :orderitems, only: [:index, :create]
			end


		end
	end
end
