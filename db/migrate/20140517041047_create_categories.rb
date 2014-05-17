class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name, :null => false
      t.boolean :credit, :default => true
      t.timestamps
    end
  end
end
