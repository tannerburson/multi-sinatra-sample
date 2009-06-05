require File.dirname(__FILE__) + '/helper'

module Sample
  describe 'Home page' do
    include Rack::Test::Methods

    def app; Main; end

    it 'shows the default page' do
      get '/'
      last_response.should be_ok
      last_response.body.should == "This is the index\n"
    end
  end
end
