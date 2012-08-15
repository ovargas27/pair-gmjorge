require 'spec_helper'

describe User do
  it "should be saved with a valid attributes" do
    FactoryGirl.create(:user).should be_valid
  end

  it "should not be saved with invalid attributes" do
    expect { FactoryGirl.create(:user, uid: '') }.to raise_error
  end

  it 'should have books' do
    FactoryGirl.create(:user_with_books).should be_valid
  end
end
