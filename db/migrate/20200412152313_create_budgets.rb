class CreateBudgets < ActiveRecord::Migration[6.0]
  def change
    create_table :budgets do |t|
      t.string :name
      t.decimal :actualIncome
      t.decimal :actualExtraIncome
      t.decimal :projectedIncome
      t.decimal :projectedExtraIncome
      t.string :period
      t.date :startDate
      t.date :endDate
      t.decimal :actualExpense
      t.decimal :projectedExpense

      t.timestamps
    end
  end
end
