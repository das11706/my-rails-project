class Comic < ApplicationRecord
  belongs_to :contributor
  has_many :reviews
  has_many :readers, through: :reviews
  validates :title, presence: true
  validates :description, presence: true
end
