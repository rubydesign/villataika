Villataika::Application.routes.draw do |map|

  root :controller => "page", :action => "index" , :locale => "fi"

  get '/(:locale)/(:dir)/:page.html',
        :to => 'page#index',
        :constraints => {
          :locale => /[a-z]{2}/,
          :dir => '/room/'
        },
        :defaults => {
          :page => "index",
          :locale => 'fi'
        }
end
