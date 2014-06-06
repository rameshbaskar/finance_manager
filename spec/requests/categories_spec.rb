require 'spec_helper'

describe 'Categories' do
  describe 'GET /categories' do
    let(:category) {Category.create!(name: 'test')}

    it 'should work for index' do
      get categories_path
      response.status.should be(200)
    end

    it 'should work for /new' do
      get "#{categories_path}/new"
      response.status.should be(200)
    end

    it 'should work for /show' do
      get "#{categories_path}/#{category.id}"
      response.status.should be(200)
    end

    it 'should work for /edit' do
      get "#{categories_path}/#{category.id}/edit"
      response.status.should be(200)
    end
  end
end
