Rails.application.routes.draw do
  post '/update_counter/:id',    to: 'questions#update_counter'
  
  root 'courses#index'


  post '/quiz', to: 'quizzes#show'
  get '/quiz', to: 'quizzes#new'
  
  resources :courses, only: [:show, :index]
  resources :questions
  resources :answers
end
