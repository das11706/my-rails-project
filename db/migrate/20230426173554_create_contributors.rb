class CreateContributors < ActiveRecord::Migration[7.0]
  def change
    create_table :contributors do |t|
      t.string :name
      t.string :title
      t.string :email
      t.string :password
      t.string :password_digest

      t.timestamps
    end
  end
end
