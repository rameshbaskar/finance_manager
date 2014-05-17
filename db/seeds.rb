# List of Categories
# Income Categories
Category.create!(:name => 'Salary', :credit => true)
Category.create!(:name => 'Travel Advance', :credit => true)
Category.create!(:name => 'Reimbursement', :credit => true)
Category.create!(:name => 'Redemption', :credit => true)

# Expense Categories
Category.create!(:name => 'Grocery', :credit => false)
Category.create!(:name => 'Dining Out', :credit => false)
Category.create!(:name => 'Shopping', :credit => false)
Category.create!(:name => 'Public Transportation', :credit => false)
Category.create!(:name => 'Cab', :credit => false)
Category.create!(:name => 'Mobile Phone', :credit => false)
Category.create!(:name => 'Temple', :credit => false)
Category.create!(:name => 'Miscellaneous', :credit => false)
Category.create!(:name => 'Transfer to India', :credit => false)

# Months
Month.create!(:name => 'January')
Month.create!(:name => 'February')
Month.create!(:name => 'March')
Month.create!(:name => 'April')
Month.create!(:name => 'May')
Month.create!(:name => 'June')
Month.create!(:name => 'July')
Month.create!(:name => 'August')
Month.create!(:name => 'September')
Month.create!(:name => 'October')
Month.create!(:name => 'November')
Month.create!(:name => 'December')
