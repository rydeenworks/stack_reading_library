class AddImageToStackBookEvent < ActiveRecord::Migration[5.2]
  def change
    add_column :stack_book_events, :image, :string
  end
end
