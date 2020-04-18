class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :iName
      t.decimal :projectedCost
      t.decimal :actualCost
      t.string :iCategory
      t.references :budget, null: false, foreign_key: true

      t.timestamps
    end
  end
end
