class AddBookShelfIdToStackBookEvent < ActiveRecord::Migration[5.2]
  def change
    add_column :stack_book_events, :book_shelf_id, :integer
    remove_column :stack_book_events, :user_id
  end
end
