require 'spec_helper'

describe SessionsController do

  before do
    OmniAuth.config.mock_auth[:google] = {
      'uid' => '12345'
    }
  end

  it "sets a session variable to the OmniAuth auth has" do
    pending 'I do not how can be test it'
    controller.session[:auth_hash]['uid'].should_not be_empty
    controller.session[:auth_hash]['uid'].should == '12345'
  end

end
