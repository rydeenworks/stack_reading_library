class ChngeStackBookEvents < ActiveRecord::Migration[5.2]
  def change
    change_column :stack_book_events, :title, :column_type, null: false    
    change_column :stack_book_events, :author, :column_type, null: false    
    change_column :stack_book_events, :isbn, :column_type, null: false    
    change_column :stack_book_events, :date, :column_type, null: false    
    change_column :stack_book_events, :user_id, :column_type, null: false    
  end
end
