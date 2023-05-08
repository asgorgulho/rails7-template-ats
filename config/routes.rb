Rails.application.routes.draw do
  get 'dashboard/show'

  root 'dashboard#show'
end
