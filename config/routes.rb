Rails.application.routes.draw do
  get 'sessions/new'
	root 'static_pages#home'
  	get  '/help',    to: 'static_pages#help'
  	get  '/about',   to: 'static_pages#about'
  	get  '/contact', to: 'static_pages#contact'
	get  '/courses',  to: 'static_pages#courses'
  	get  '/signup',  to: 'users#new'
  	get    '/login',   to: 'sessions#new'
  	post   '/login',   to: 'sessions#create'
<<<<<<< HEAD
	delete '/logout',  to: 'sessions#destroyo'
	get  '/courses',  to: 'static_pages#courses'
	get  '/wiki',   to: 'static_pages#wiki'
	get  '/quiz',    to: 'static_pages#quiz'
=======
	delete '/logout',  to: 'sessions#destroy'
>>>>>>> 4eddec4e6802e5ecfda37ca01a0bba80fc72db7c
  	resources :users
	
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
