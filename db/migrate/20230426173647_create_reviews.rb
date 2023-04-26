class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :name
      t.string :description
      t.integer :comic_id
      t.integer :reader_id

      t.timestamps
    end
  end
end
