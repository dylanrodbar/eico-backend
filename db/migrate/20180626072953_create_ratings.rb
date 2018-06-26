class CreateRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :ratings do |t|
      t.integer :post
      t.integer :ratingtype
      t.integer :user
      t.date :date

      t.timestamps
    end
  end
end
