class ReadBookEvent < ApplicationRecord
  belongs_to :stack_book_event
  validates :finish_date, presence: true
end
