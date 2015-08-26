Rails.application.routes.draw do
  root to: 'visitors#index'

  get '/fixit' ,to: 'workorders#new'
  resource :workorders , only: [:new, :create]
end
