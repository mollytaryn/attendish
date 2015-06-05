Rails.application.routes.draw do

  root 'students#index'

  resource :attendances, only: [:new, :create]

end
