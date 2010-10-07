ActionController::Routing::Routes.draw do |map|
  map.resources :tweets
  map.resources :contact
  map.root :controller => "home"
end
