require 'spec_helper'

describe Book do

  it 'should be saved with valid attributes' do
    FactoryGirl.create(:book).should be_valid
  end

  it 'should not be saved with numeric ISBN' do
    expect { FactoryGirl.create(:book, numero_libro: 'sdfadsfa') }.to raise_error
  end

end
