module ReviewsHelper
  def reader_id_field(review)
    if review.reader.nil?
      select_tag "review[reader_id]", options_from_collection_for_select(Reader.all, :id, :name)
    else
      hidden_field_tag "review[reader_id]", review.reader_id
    end
  end

  def comic_id_field(review)
    if review.comic.nil?
      select_tag "review[comic_id]", options_from_collection_for_select(Comic.all, :id, :title)
    else
      hidden_field_tag "review[comic_id]", review.comic_id
    end
  end
end
