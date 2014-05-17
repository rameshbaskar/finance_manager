class Transaction < ActiveRecord::Base
  belongs_to :category
  belongs_to :month

  validates :name, presence: true
  validates :day, presence: true
  validates :month, presence: true
  validates :year, presence: true
  validates :amount, presence: true
end
