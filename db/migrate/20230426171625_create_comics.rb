class CreateComics < ActiveRecord::Migration[7.0]
  def change
    create_table :comics do |t|
      t.string :title
      t.string :description
      t.integer :date_submitted
      t.integer :contributor_id

      t.timestamps
    end
  end
end
