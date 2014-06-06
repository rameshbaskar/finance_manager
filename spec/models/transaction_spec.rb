require 'spec_helper'

describe Transaction do
  let(:transaction) {Transaction.new}

  it 'should require name' do
    transaction.valid?.should be_false
  end

  it 'should require day' do
    transaction.valid?.should be_false
  end

  it 'should require month' do
    transaction.valid?.should be_false
  end

  it 'should require year' do
    transaction.valid?.should be_false
  end

  it 'should require amount' do
    transaction.valid?.should be_false
  end

  it 'should have the error message when name is not present' do
    transaction.valid?
    transaction.errors[:name].first.should eq "can't be blank"
  end

  it 'should have the error message when day is not present' do
    transaction.valid?
    transaction.errors[:day].first.should eq "can't be blank"
  end

  it 'should have the error message when month is not present' do
    transaction.valid?
    transaction.errors[:month].first.should eq "can't be blank"
  end

  it 'should have the error message when year is not present' do
    transaction.valid?
    transaction.errors[:year].first.should eq "can't be blank"
  end

  it 'should have the error message when amount is not present' do
    transaction.valid?
    transaction.errors[:amount].first.should eq "can't be blank"
  end
end
