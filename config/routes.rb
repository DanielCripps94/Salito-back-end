Rails.application.routes.draw do
  post '/signin', to: 'users#sign_in'
  post '/sign-up', to: 'users#sign_up'
  get '/validate', to: 'users#validate'

end
