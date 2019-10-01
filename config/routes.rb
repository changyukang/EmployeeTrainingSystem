Rails.application.routes.draw do
  get 'search', to: 'search#search'
  resources :scores
  resources :quizzes
  resources :course_progresses
  resources :quizzes
  get '/wikis/',    to: 'courses#show_wikis'
  get '/quizzes/',    to: 'courses#show_quizzes'
  get '/article_wikis/',    to: 'courses#show_article_wikis'
  get '/article_quizzes/',    to: 'courses#show_article_quizzes'
  resources :courses
  resources :articles
  get 'sessions/new'
  root 'static_pages#home'
    get  '/help',    to: 'static_pages#help'
    get  '/about',   to: 'static_pages#about'
    get  '/contact', to: 'static_pages#contact'
    get  '/signup',  to: 'users#new'
    get    '/login',   to: 'sessions#new'
    post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get  '/wiki',   to: 'static_pages#wiki'
  get  '/quiz',    to: 'static_pages#quiz'
  get  '/quiz2',    to: 'static_pages#quiz2'
    resources :users
    resources :groups
    resources :user_groups
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
