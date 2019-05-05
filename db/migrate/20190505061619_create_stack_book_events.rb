class CreateStackBookEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :stack_book_events do |t|
      t.string :title
      t.string :author
      t.string :isbn
      t.timestamp :date

      t.timestamps
    end
  end
end
