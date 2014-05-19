class DashboardController < ApplicationController
  def index
    @summary = []

    months.each do |m|
      trans = transactions_for_period(m, '2014')
      if trans.size > 0
        m_summary = monthly_summary(m, '2014')
        m_c_summary = monthly_category_summary(m, '2014'  )
        @summary << {:month => m.name, :cost_summary => m_summary, :category_summary => m_c_summary, :transactions => trans}
      end
    end
  end

  private

  def months
    Month.all.order(:id).reverse
  end

  def all_categories
    Category.all.order(:id)
  end

  def transactions_for_period(month, year)
    Transaction.all.where(:month => month, :year => year).order(:id)
  end

  def monthly_summary(month, year)
    income = 0
    expense = 0
    savings = 0
    transactions_for_period(month, year).each do |t|
      t.category.credit? ? (income += t[:amount]) : (expense += t[:amount])
    end
    {:income => income, :expense => expense, :savings => savings}
  end

  def monthly_category_summary(month, year)
    summary = []
    all_categories.each do |c|
      income_expense = 0
      c.transactions.where(:month => month, :year => year).each do |t|
        income_expense += t[:amount]
      end
      summary << {:category => c.name, :amount => income_expense}
    end
    summary
  end
end
