class AddStackBookEventIdToReadBookEvent < ActiveRecord::Migration[5.2]
  def change
    add_column :read_book_events, :stack_book_event_id, :integer
  end
end
