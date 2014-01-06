require 'spec_helper'
require 'rspec_api_documentation/dsl'

resource 'Items' do

  header "Accept", "application/json"

  get '/api/items' do

    example  "Get a list of items" do
      do_request
      status.should == 200
    end

  end

end