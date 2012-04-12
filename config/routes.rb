MakeSandwich::Application.routes.draw do

	resources :users, :sessions, :sandwiches

	match '/signup' => 'users#new'
	match '/signin' => 'sessions#new'

	root :to => 'static_pages#home'

end
