class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.string :video
      t.date :date
      t.string :media
      t.integer :user

      t.timestamps
    end
  end
end
