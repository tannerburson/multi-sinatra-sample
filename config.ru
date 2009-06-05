# To use with thin 
#  thin start -p PORT -R config.ru
require 'rubygems'

# include our Application code
require File.join(File.dirname(__FILE__), 'sample.rb')

# We have to set any options on the class objects themselves
# In this case we want to set both to dev mode.
[Sample::Main,Sample::Blog].each do |controller|
	controller.set :environment, :development
end
# Mount our Main class with a base url of /
map "/" do
	run Sample::Main
end

# Mount our Blog class with a base url of /blog
map "/blog" do
	run Sample::Blog
end
