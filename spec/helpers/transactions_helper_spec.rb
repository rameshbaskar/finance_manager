require 'spec_helper'
include TransactionsHelper

describe TransactionsHelper do
  let(:today) {Chronic.parse('today at 12 am')}

  it 'should return the current month' do
    this_month.should eq "#{today.strftime('%b')}"
  end

  it 'should return the current year' do
    this_year.should eq "#{today.strftime('%Y')}"
  end

  it 'should return the current period' do
    this_period.should eq "#{today.strftime('%b')}-#{today.strftime('%Y')}"
  end

  it 'should return the transaction date' do
    transaction_date('26','June', '1982').should eq '26-June-1982'
  end

  it 'should return the formatted currency when there are 0 decimal places' do
    formatted_currency(24).should eq '24.00'
  end

  it 'should return the formatted currency when there are 1 decimal places' do
    formatted_currency(24.1).should eq '24.10'
  end

  it 'should return the formatted currency when there are 2 decimal places' do
    formatted_currency(24.99).should eq '24.99'
  end

  it 'should return the formatted currency when there are 3 decimal places that does not require rounding' do
    formatted_currency(24.763).should eq '24.76'
  end

  it 'should return the formatted currency when there are 3 decimal places that requires rounding' do
    formatted_currency(24.765).should eq '24.77'
  end

  it 'should return the formatted currency when there is a thousand separator' do
    formatted_currency(24001.24).should eq '24,001.24'
  end

  it 'should return the formatted currency when there 2 separators' do
    formatted_currency(24001764.24).should eq '24,001,764.24'
  end
end
