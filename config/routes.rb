Rails.application.routes.draw do

  root 'welcome#index'
  post '/' => 'welcome#index'
  post '/follow' => 'welcome#index'

end
