Clueless::Application.routes.draw do

  resources :clothing_articles


  root :to => 'pages#home'

end
