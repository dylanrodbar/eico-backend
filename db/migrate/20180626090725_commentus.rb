class Commentus < ActiveRecord::Migration[5.0]
  def change
    rename_column :comments, :user, :user_id
    rename_column :comments, :post, :post_id
  end
end
