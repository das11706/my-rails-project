class Reader < ApplicationRecord
  has_many :reviews
  has_many :comics, through: :reviews
  # @reader.comics

  validates :name, presence: true, uniqueness: true
  # validates :name, presence: true
  validates :email, presence: true
  # validates :password, presence: true, length: { minimum: 4 }
  has_secure_password
  accepts_nested_attributes_for :reviews

  def comics_attributes=(comic_attributes)
    comic_attributes.values.each do |comic_attribute|
      comic = Comic.find_or_create_by(comic_attribute)
      self.comics << comic
    end
  end
end
