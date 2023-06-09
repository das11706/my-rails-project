class Comic < ApplicationRecord
  belongs_to :contributor
  has_many :reviews
  # reviews.comic_id
  # @comic.reviews
  
  has_many :readers, through: :reviews
  # @comic.readers

  validates :title, presence: true
  validates :description, presence: true
  # accepts_nested_attributes_for :reviews

  # def reviews_attributes=(review_attributes)
  #   review_attributes.values.each do |review_attribute|
  #     review = Review.find_or_create_by(review_attribute)
  #     self.reviews << review
  #   end
  # end

  def reviews_attributes=(reviews_attributes)
    reviews_attributes.values.each do |review_attributes|
      self.reviews.build(review_attributes)
    end
  end

  def self.alphabetically
    all.order(title: :desc)
  end

end
