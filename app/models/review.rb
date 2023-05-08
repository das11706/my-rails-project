class Review < ApplicationRecord
  belongs_to :comic
  belongs_to :reader
  validates :name, presence: true
  validates :description, presence: true

  def comics_attributes=(comics_attributes)
    comics_attributes.values.each do |comic_attributes|
    self.comics.build(comic_attributes)
    end
  end

end
