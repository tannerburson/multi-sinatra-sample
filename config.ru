# To use with thin 
#  thin start -p PORT -R config.ru

require 'sinatra'

# include our Application code
require File.join(File.dirname(__FILE__), 'sample.rb')

# disable sinatra's auto-application starting
disable :run

# we're in dev mode
set :environment, :development

# Mount our Main class with a base url of /
map "/" do
	run Sample::Main
end

# Mount our Blog class with a base url of /blog
map "/blog" do
	run Sample::Blog
end
