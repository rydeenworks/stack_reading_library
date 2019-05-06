class StackBookEvent < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :isbn, presence: true
  validates :author, presence: true
  validates :date, presence: true
  
end
