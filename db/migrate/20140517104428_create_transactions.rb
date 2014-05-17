class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :name, :null => false
      t.string :day, :null => false
      t.integer :month_id, :null => false
      t.string :year, :null => false
      t.integer :category_id, :null => false
      t.decimal :amount, :null => false
      t.timestamps
    end
  end
end
