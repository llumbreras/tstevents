Tstevents::Application.routes.draw do
root to: 'events#index'
get 'events'=> 'events#index'
end
