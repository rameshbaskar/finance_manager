require 'spec_helper'

describe 'Transactions' do
  describe 'GET /transactions' do
    let(:transaction) {Transaction.create!(name: 'test', category: Category.find_by_id(1), day: '23', month: Month.find_by_name('June'), year: '2014', amount: 24001.99)}

    it 'should work for index' do
      get transactions_path
      response.status.should be(200)
    end

    it 'should work for /new' do
      get "#{transactions_path}/new"
      response.status.should be(200)
    end

    it 'should work for /show' do
      get "#{transactions_path}/#{transaction.id}"
      response.status.should be(200)
    end

    it 'should work for /edit' do
      get "#{transactions_path}/#{transaction.id}/edit"
      response.status.should be(200)
    end
  end
end
