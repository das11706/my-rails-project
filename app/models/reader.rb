class Reader < ApplicationRecord
  has_many :reviews
  has_many :comics, through: :reviews
  validates :name, presence: true
  validates :password, presence: true, length: {minimum: 4 }
  has_secure_password
end
