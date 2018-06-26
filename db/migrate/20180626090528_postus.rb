class Postus < ActiveRecord::Migration[5.0]
  def change
    rename_column :posts, :user, :user_id
  end
end
