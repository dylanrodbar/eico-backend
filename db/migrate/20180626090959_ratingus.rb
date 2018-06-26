class Ratingus < ActiveRecord::Migration[5.0]
  def change
    rename_column :ratings, :user, :user_id
    rename_column :ratings, :post, :post_id
    rename_column :ratings, :ratingtype, :ratingtype_id
  end
end
