TestEngine::Engine.routes.draw do
  get 'link/duration'
  get 'link/program_module'
  get 'link/order'


  resources :learning_journeys do
  	resources :links
  end


end
