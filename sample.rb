# Require sinatra/base instead of sinatra to avoid some of the magic
require 'sinatra/base'

module Sample
  class Main < Sinatra::Base
	# Pretty normal application here
	get '/' do
	  erb :index
	end
  end

  class Blog < Sinatra::Base
	# We define it this way to not require a hard / at the end of the url
	get '' do
	  erb :blog
	end

	get '/list' do
	  erb :blog_list
	end
  end
end
