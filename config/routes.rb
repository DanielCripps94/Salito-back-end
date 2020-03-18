Rails.application.routes.draw do
  post '/signin', to: 'users#sign_in'
  post '/signup', to: 'users#create'
  get '/validate', to: 'users#validate'

end
