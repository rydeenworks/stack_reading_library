class CreateReadBookEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :read_book_events do |t|
      t.datetime :finish_date

      t.timestamps
    end
  end
end
