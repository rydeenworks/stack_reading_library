class StackBookEvent < ApplicationRecord
  belongs_to :user
  has_many :read_book_events, dependent: :destroy
  validates :title, presence: true
  validates :isbn, presence: true
  validates :author, presence: true
  validates :date, presence: true
end
