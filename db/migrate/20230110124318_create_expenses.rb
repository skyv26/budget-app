class CreateExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :expenses do |t|
      t.references :author, references: :users, null: false, foreign_key: { to_table: :users, to_delete: :cascade }
      t.string :name
      t.float :amount

      t.timestamps
    end
  end
end
