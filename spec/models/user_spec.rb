require 'spec_helper'

describe User do
  it "should be created a valid user" do
    FactoryGirl.create(:user).should be_valid
  end

  it "should not be create a invalid user" do
    expect { FactoryGirl.create(:user, uid: '') }.to raise_error
  end
end
