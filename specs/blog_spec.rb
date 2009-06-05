require File.dirname(__FILE__) + '/helper'

module Sample
  describe 'Sample Blog' do
    include Rack::Test::Methods

    def app; Blog; end;

    it 'shows an index' do
      get ''
      last_response.should be_ok
      last_response.body.should == "This would be a blog\n"
    end

    it 'shows a list on /list' do
      get '/list'
      last_response.should be_ok
      last_response.body.should == "This is the blog list.\n"
    end
  end
end
