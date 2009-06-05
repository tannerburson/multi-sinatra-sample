# This file sets up the shared stuff across all of our tests
$:.unshift File.join(File.dirname(__FILE__),'..')
require 'sample'
require 'rubygems'
require 'spec'
require 'spec/interop/test'
require 'rack/test' #http://www.sinatrarb.com/testing.html
