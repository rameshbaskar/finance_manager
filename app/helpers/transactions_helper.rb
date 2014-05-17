module TransactionsHelper
  require 'chronic'

  def this_month
    today.strftime('%b')
  end

  def this_year
    today.strftime('%Y')
  end

  def this_period
    "#{this_month}-#{this_year}"
  end

  def transaction_date(day, month, year)
    "#{day}-#{month}-#{year}"
  end

  private

  def today
    Chronic.parse('today')
  end
end
