class AddUserIdToBudgets < ActiveRecord::Migration[6.0]
  def change
    add_column :budgets, :user_id, :integer
  end
end
