class CreateRatingtypes < ActiveRecord::Migration[5.0]
  def change
    create_table :ratingtypes do |t|
      t.string :name

      t.timestamps
    end
  end
end
