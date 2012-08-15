require 'spec_helper'

describe User do
  it "should be saved with a valid attributes" do
    FactoryGirl.create(:user).should be_valid
  end

  it "should not be saved with invalid attributes" do
    expect { FactoryGirl.create(:user, uid: '') }.to raise_error
  end
end
