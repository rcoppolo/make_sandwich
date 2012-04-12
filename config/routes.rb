MakeSandwich::Application.routes.draw do

	resources :users, :sessions, :sandwiches

	match '/signup' => 'users#new'
	match '/signin' => 'sessions#new'
	match '/signout' => 'sessions#destroy', via: :delete

	root :to => 'static_pages#home'

end
