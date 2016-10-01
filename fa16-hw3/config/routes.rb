Rails.application.routes.draw do
  root 'teachers#index'
  
  get '/teachers/new', to: 'teachers#new'
  post '/teachers', to: 'teachers#create'
  
  get '/students/new', to: 'students#new'
  post '/students', to: 'students#create'
  
  get '/', to: 'students#new'
  
  
end
