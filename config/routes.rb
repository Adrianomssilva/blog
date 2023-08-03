Rails.application.routes.draw do
# get '/' , controller: 'home', action: 'index'  -- isso é coisa de pleno ou senior

# modo jr de fazer
root 'home#index'
end
