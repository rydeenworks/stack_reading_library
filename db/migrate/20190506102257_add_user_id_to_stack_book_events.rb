class AddUserIdToStackBookEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :stack_book_events, :user_id, :integer
  end
end
