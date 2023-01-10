class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.references :author, references: :users, null: false, foreign_key: { to_table: :users, to_delete: :cascade }
      t.string :name
      t.string :icon

      t.timestamps
    end
  end
end
