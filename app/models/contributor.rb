class Contributor < ApplicationRecord
  has_many :comics
  validates :name, presence: true
  validates :title, presence: true
end
