class Month < ActiveRecord::Base
  has_many :transactions
end
