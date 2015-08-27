Rails.application.routes.draw do
  root to: 'visitors#index'

  get '/fixit' ,to: 'workorders#new'
  get '/completed' ,to: 'workorders#completed'
  resource :workorders , only: [:new, :create]
end
