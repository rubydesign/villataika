Villataika::Application.routes.draw do |map|

  root :controller => "page", :action => "index" , :locale => "fi"

  get '/(:locale)/(:dir)/:page(.:extension)',
        :to => 'page#index',
        :constraints => {
          :locale => /[a-z]{2}/,
        },
        :defaults => {
          :page => "index",
          :extension => 'html',
          :locale => 'fi'
        }
end
