class ChangeColumnBudgetsUserToUserIdReference < ActiveRecord::Migration[6.0]
  def change
    remove_column :budgets, :user, :integer
    add_column :budgets, :user_id, :integer, references: :users
  end
end
