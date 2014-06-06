require 'spec_helper'

describe Category do
  let(:category) {Category.new}

  it 'should require name' do
    category[:name] = nil
    category.valid?.should be_false
  end

  it 'should have the error message when name is not present' do
    category[:name] = nil
    category.valid?
    category.errors[:name].first.should eq "can't be blank"
  end

  it 'should have credit as true by default' do
    category.credit?.should be_true
  end
end
