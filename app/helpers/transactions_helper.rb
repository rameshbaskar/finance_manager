module TransactionsHelper
  require 'chronic'
  include ActionView::Helpers::NumberHelper

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

  def formatted_currency(value)
    number_with_delimiter(number_with_precision(value, precision: 2), delimiter: ',')
  end

  private

  def today
    Chronic.parse('today at 12 am')
  end
end
