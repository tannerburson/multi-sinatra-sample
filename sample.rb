# Require sinatra/base instead of sinatra to avoid some of the magic
# This keeps us from polluting the top level namespace with sinatra's
# magic methods.
require 'sinatra/base'

module Sample
  class SampleBase < Sinatra::Base
    # setup some options we want shared between all 'controllers'
    set :static, true
    set :public, File.join(File.dirname(__FILE__),'public')
    enable :sessions
  end

  class Main < SampleBase
    set :views, File.join(File.dirname(__FILE__),'views','main')
    # Pretty normal application here
    get '/' do
      erb :index
    end
  end

  class Blog < SampleBase
    set :views, File.join(File.dirname(__FILE__),'views','blog')
    # We define it this way to not require a hard / at the end of the url
    get '' do
      erb :blog
    end

    get '/list' do
      erb :blog_list
    end
  end
end
