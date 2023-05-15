class Review < ApplicationRecord
  belongs_to :comic
  # @review.comic_id
  # @review.comic

  belongs_to :reader
  # @review.reader_id
  # @review.reader

  validates :name, presence: true
  validates :description, presence: true

  def comics_attributes=(comics_attributes)
    comics_attributes.values.each do |comic_attributes|
    self.comics.build(comic_attributes)
    end
  end

  def comic_title=(title)
    self.comic = Comic.find_or_create_by(title: title)
  end

  def comic_title
     self.comic ? self.comic.title : nil
  end

  def reader_name=(name)
    self.reader = Reader.find_or_create_by(name: name)
  end

  def reader_name
     self.reader ? self.reader.name : nil
  end
end
