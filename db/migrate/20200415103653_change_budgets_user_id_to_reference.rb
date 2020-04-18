class ChangeBudgetsUserIdToReference < ActiveRecord::Migration[6.0]
  def change
    remove_column :budgets, :user_id, :integer
    add_column :budgets, :user, :integer, references: :users
  end
end
