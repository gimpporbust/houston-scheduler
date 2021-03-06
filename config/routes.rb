Houston::Scheduler::Engine.routes.draw do
  
  root :to => "scheduler#index", :as => :demo
  
  get "mixer", :to => "mixer#index", :as => :mixer
  put "mixer", :to => "mixer#update"
  
  get "by_project/:slug", :to => "scheduler#project", :as => :project
  put "by_project/:slug/ticket_order", :to => "tickets#update_order"
  
  put "tickets/:id", :to => "tickets#update", constraints: {id: /\d+/}
  
end
