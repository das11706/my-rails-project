class Review < ApplicationRecord
  belongs_to :comic
  belongs_to :reader
  validates :name, presence: true
  validates :description, presence: true
end
