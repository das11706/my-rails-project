class CreateReaders < ActiveRecord::Migration[7.0]
  def change
    create_table :readers do |t|
      t.string :name
      t.string :email
      t.string :image
      t.string :uid

      t.timestamps
    end
  end
end
