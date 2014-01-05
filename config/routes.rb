Hotspots::Application.routes.draw do
  root 'hotspots#index'
  get '/search' => 'hotspots#search'
end
