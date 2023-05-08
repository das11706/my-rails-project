class Contributor < ApplicationRecord
  has_many :comics
  validates :name, presence: true
  validates :email, presence: true
  validates :title, presence: true
  validates :password, presence: true, length: { minimum: 4 }
  has_secure_password
end
