class CreateTodoLists < ActiveRecord::Migration
  def change
    create_table :todo_lists do |t|
      t.string :title
      t.text :description
      t.string :color
      t.datetime :due_date
      t.boolean :complete

      t.timestamps null: false
    end
  end
end
