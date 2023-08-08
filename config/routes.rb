Rails.application.routes.draw do
# get '/' , controller: 'home', action: 'index'  -- isso é coisa de pleno ou senior

# modo jr de fazer
root 'home#index'

# CRUD na unha pleno ou sênior!
# get '/vehicles', controller: 'vehicles', action: 'index'
# get '/vehicles/new', controller: 'vehicles', action: 'new'
# post '/vehicles', controller: 'vehicles', action: 'create'
# get '/vehicles/:id', controller: 'vehicles', action: 'show'
# get '/vehicles/:id/edit', controller: 'vehicles', action: 'edit'
# put '/vehicles/:id', controller: 'vehicles', action: 'update'
# patch '/vehicles/:id', controller: 'vehicles', action: ''
# delete '/vehicles/:id', controller: 'vehicles', action: ''

# resources :vehicles #only: [:index, :new, :create, :show, :edit, :update, :destroy]
resources :vehicles
#only: [:index, :new, :create, :show, :edit, :update, :destroy]

end
