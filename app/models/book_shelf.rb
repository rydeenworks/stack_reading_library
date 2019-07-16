class BookShelf < ApplicationRecord
  belongs_to :user
  has_many :stack_book_events
  validates :title, length: { maximum: 20 }, presence: true
  validates :note, length: { maximum: 100 }
end
