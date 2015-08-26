Rails.application.routes.draw do
  root to: 'visitors#index'

  get '/fixit' ,to: 'visitors#fixit'
end
